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
parser.add_option('--NRuns',action="store",type="int",dest="NRuns",default=1)

# tests to run
parser.add_option('--runStressTest', action='store_true', dest='runStressTest', default=False, help='go!')
parser.add_option('--runExampleTest', action='store_true', dest='runExampleTest', default=False, help='go!')
parser.add_option('--Load', action='store_true', dest='Load', default=False, help='go!')
parser.add_option('--odir',action="store",type="string",dest="odir",default="logs_chipX_mezzY")


(options, args) = parser.parse_args()

############################################################

if __name__ == '__main__':

    if os.path.exists(options.odir):
        pass;
    else:
        os.makedirs(options.odir)

    # ------------------------------------------------
    # ------------------------------------------------
    # ------------------------------------------------
    numberOfRuns  = options.NRuns
    nstresses = [10,50,100]
    freqs = [10,25,33,50,66,70,76,83,90,100,111,125]

    for n in nstresses:
        for f in freqs:
            for i in range(numberOfRuns):
                cmmd = 'python Run_Original.py -b --NStress %i --freq %i > %s/log_%i_%i_%i.log' % (n,f,options.odir,n,f,i);
                print cmmd;
                os.system(cmmd);
    
