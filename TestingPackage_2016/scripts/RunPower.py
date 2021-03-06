import os
import sys
import ctypes
import time
import array

import uhal
import ROOT
from ROOT import TGraph, TCanvas, gPad, TLegend, TH1F

from optparse import OptionParser
import os
import random

sys.path.insert(0, '../interface')
sys.path.insert(0, './data')
from pVIPRAM_inputBuilderClass import *
from pVIPRAM_inputVisualizerClass import *
from VipramCom import *
from test_definitions import *

# gROOT.ProcessLine(".L ~/tdrstyle.C");
setTDRStyle();
ROOT.gStyle.SetPadLeftMargin(0.16);
ROOT.gStyle.SetPadRightMargin(0.10);
ROOT.gStyle.SetPadTopMargin(0.10);
ROOT.gStyle.SetPalette(1);

#########################

parser = OptionParser()

parser.add_option('-b', action='store_true', dest='noX', default=False, help='no X11 windows')
parser.add_option('--go', action='store_true', dest='go', default=False, help='go!')
parser.add_option('--reset', action='store_true', dest='reset', default=False, help='go!')

parser.add_option('--freq',action="store",type="int",dest="freq",default=50)
parser.add_option('--NStress',action="store",type="int",dest="NStress",default=0)


parser.add_option('--load',action="store_true",dest="load",default=True)
parser.add_option('--run',action="store_true",dest="run",default=True)


parser.add_option('--vprech',action="store",type="int",dest="vprech",default=38)
parser.add_option('--vdd',action="store",type="int",dest="vdd",default=38)
parser.add_option('--dvdd',action="store",type="int",dest="dvdd",default=38)

parser.add_option('--rep',action="store",type="int",dest="rep",default=1)
# tests to run
parser.add_option('--runStressTest', action='store_true', dest='runStressTest', default=False, help='go!')
parser.add_option('--runExampleTest', action='store_true', dest='runExampleTest', default=False, help='go!')
parser.add_option('--Load', action='store_true', dest='Load', default=False, help='go!')
parser.add_option('--odir',action="store",type="string",dest="odir",default="../output")


(options, args) = parser.parse_args()

############################################################

def writeToText(idvdd, ivdd, iprech):

    f = open("results_Match_DVDD_v5.txt",'a');
    f.write(str(options.freq) + " " + str(options.NStress) + " " + str(idvdd) + " " + str(ivdd) + " " + str(iprech) + "\n" );
    f.close();

if __name__ == '__main__':

    if os.path.exists(options.odir):
        pass;
    else:
        os.makedirs(options.odir)

    # ------------------------------------------------
    # ------------------------------------------------
    # ------------------------------------------------
    # generate the patterns
    pattern1 = stressTest_split("tmp1",options.NStress,options.freq,options.odir,options.Load);
	
    print "---> Testing at frequency: ", options.freq, " and voltages(vprech, cvdd, dvdd): ", options.vprech, options.vdd, options.dvdd  
    #pattern1 = exampleTest("tmp1");
    #pattern1  = realisticTest("tmp1",100);

    visualizer1 = inputVisualizer( pattern1.getFilename() );
    bits = visualizer1.writeToText( os.path.splitext( pattern1.getFilename() )[0]+"_i.txt", True );
    
    vc1 = VipramCom("tmp1",True,options.freq,options.odir, options.vprech, options.vdd, options.dvdd);

    offset = 1;
    # if options.freq == 25: offset = 4;
    # if options.freq == 33: offset = 3;
    # if options.freq == 50: offset = 2;
    # if options.freq > 50 and options.freq < 99: offset = 2;
    
    #vc1.changeClockFrequency("vco",5);
    vc1.changeClockFrequency("clock0",int(1000/options.freq), 0);
    vc1.changeClockFrequency("clock1",int(1000/options.freq), 0);
    vc1.changeClockFrequency("clock2",int(1000/options.freq), offset);
    #vc1.changeClockFrequency("clock3",100, 0);
    time.sleep(1);

    ## standard test
    #vc1.runTest(bits);

    if options.Load: vc1.runPowerTest(bits,1);
    else: vc1.runPowerTest(bits,1,True,50000);

    print "len(vc1._i_dvdd) = ", len(vc1._i_dvdd)
    print "len(vc1._i_vdd) = ", len(vc1._i_vdd)
    print "len(vc1._i_prech) = ", len(vc1._i_prech)


    ###########################################
    ## plotting 
    ###########################################
    if not options.Load: 
        
        a_t = array('d', []);
        a_dvdd = array('d', []);
        a_vdd  = array('d', []);
        a_prech= array('d', []);

        for i in range(len(vc1._i_dvdd)):
            a_t.append( float(i) );
            a_dvdd.append( 1.e-6*vc1._i_dvdd[i] );
            a_vdd.append( 1.e-6*vc1._i_vdd[i] );
            a_prech.append( 1.e-6*vc1._i_prech[i] );
		

        #print "--average stable dvdd current = ", a_dvdd[-5:], a_dvdd[0:5]
        #print "--average stable vdd current = ", a_vdd[-5:], a_vdd[0:5]
        #print "--average stable vprech current = ", a_prech[-5:], a_prech[0:5]

	print "--average stable dvdd current = ", sum(a_dvdd[-int(len(vc1._i_dvdd)/5):])/(int(len(vc1._i_dvdd)/5))
	print "--average stable vdd current = ", sum(a_vdd[-int(len(vc1._i_dvdd)/5):])/(int(len(vc1._i_dvdd)/5))
	print "--average stable vprech current = ", sum(a_prech[-int(len(vc1._i_dvdd)/5):])/(int(len(vc1._i_dvdd)/5))

        gr_dvdd = TGraph( len(a_t), a_t, a_dvdd );
        gr_vdd = TGraph( len(a_t), a_t, a_vdd );
        gr_prech = TGraph( len(a_t), a_t, a_prech );

        gr_dvdd.SetLineColor(1);
        gr_vdd.SetLineColor(2);
        gr_prech.SetLineColor(4);

        leg = TLegend(0.65,0.25,0.85,0.45);
        leg.SetFillStyle(1001);
        leg.SetFillColor(0);    
        leg.SetBorderSize(1);  
        leg.AddEntry(gr_dvdd,"I (dvdd)","l");
        leg.AddEntry(gr_vdd,"I (vdd)","l");
        leg.AddEntry(gr_prech,"I (prech)","l");

        c_i = TCanvas( "c_i", "c_i", 1200, 800 );
        hrl = c_i.DrawFrame(0,1.0e-4,float(len(a_t)),1.0);
        hrl.GetYaxis().SetTitle("current (A)");
        hrl.GetXaxis().SetTitle("time (N bursts)");
        c_i.SetGrid(); 
        gr_dvdd.Draw("l");
        gr_vdd.Draw("l");
        gr_prech.Draw("l");
        leg.Draw();
        gPad.SetLogy();
        c_i.SaveAs(options.odir+"/power_NStress"+str(options.NStress)+"_freq"+str(options.freq)+"_dvdd" + str(options.dvdd)+"_vdd" + str(options.vdd)+"_vprepch" + str(options.vprech)+".pdf");

        asize = len(vc1._i_dvdd)-1;
        writeToText(1.e-6*vc1._i_dvdd[asize],1.e-6*vc1._i_vdd[asize],1.e-6*vc1._i_prech[asize]);

        ####
        fout = open(options.odir+"/power_NStress"+str(options.NStress)+"_freq"+str(options.freq)+str(options.freq)+"_dvdd" + str(options.dvdd)+"_vdd" + str(options.vdd)+"_vprepch" + str(options.vprech)+".txt",'w');
        fout.write("Current measurements:\n");
	fout.write("dvdd vdd vprech\n");
	for i in range(len(a_t)):
            fout.write(str(a_t[i])+" "+str(a_dvdd[i])+" "+str(a_vdd[i])+" "+str(a_prech[i])+"\n");
        fout.close();




 
