#!/usr/bin/python
#
# (c) 2015 Commonwealth of Australia
#     Australian Bureau of Meteorology, COSPPac COMP
#     All Rights Reserved
#
# Authors: Sheng Guo <s.guo@bom.gov.au>

import currentforecast

def preprocess():
    ds = currentforecast.currentforecast()
    ds.batchprocess()

if __name__ == "__main__":
    preprocess()

__version__ = '1.0.2-6-gc184416'
