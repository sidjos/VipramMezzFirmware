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

sys.path.insert(0, './interface')
sys.path.insert(0, './data')
from pVIPRAM_inputBuilderClass import *
from pVIPRAM_inputVisualizerClass import *
from VipramCom import *
from example1 import *
from example1_split import *

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


parser.add_option('--vprech',action="store",type="int",dest="vprech",default=38)
parser.add_option('--vdd',action="store",type="int",dest="vdd",default=38)
parser.add_option('--dvdd',action="store",type="int",dest="dvdd",default=38)



# tests to run
parser.add_option('--runStressTest', action='store_true', dest='runStressTest', default=False, help='go!')
parser.add_option('--runExampleTest', action='store_true', dest='runExampleTest', default=False, help='go!')
parser.add_option('--Load', action='store_true', dest='Load', default=False, help='go!')
parser.add_option('--odir',action="store",type="string",dest="odir",default="output")


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

    print "testing REAL match efficiency with NStress = ",options.NStress," and frequency = ",options.freq 
    #pattern1 = stressTest("tmp1",options.NStress,options.freq,options.odir,options.Load);
    #pattern1 = performance_Test_0("tmp1",options.NStress,options.freq,options.odir,options.Load);
	
    data_match=32767
    data_miss=0
    pattern1 = performance_test_0_load("tmp1", options.freq, data_match, data_miss, options.odir)
	#performance_test_0("tmp1", options.freq, data_match, data_miss, options.odir)

    visualizer1 = inputVisualizer( pattern1.getFilename() );
    bits = visualizer1.writeToText( os.path.splitext( pattern1.getFilename() )[0]+"_i.txt", True );
    
    vc1 = VipramCom("tmp1",True,options.freq,options.odir, options.vprech, options.vdd, options.dvdd);

    offset = 1;

    vc1.changeClockFrequency("clock0",int(1000/options.freq), 0);
    vc1.changeClockFrequency("clock1",int(1000/options.freq), 0);
    vc1.changeClockFrequency("clock2",int(1000/options.freq), offset);

    time.sleep(1);

    if options.Load: vc1.runPowerTest(bits,1);
    else: vc1.runPowerTest(bits,1,True,1);

    print "len(vc1._i_dvdd) = ", len(vc1._i_dvdd)
    print "len(vc1._i_vdd) = ", len(vc1._i_vdd)
    print "len(vc1._i_vdd) = ", len(vc1._i_prech)

