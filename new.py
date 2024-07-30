#!/usr/bin/python

import netCDF4 as nc
import datetime
import numpy as np
import matplotlib.pyplot as plt
import cartopy.crs as ccrs
import ssl
ssl._create_default_https_context = ssl._create_unverified_context 

#Functions
def guess_resolution(latmin, latmax, lonmin, lonmax):
    if min(abs(lonmax - lonmin), latmax - latmin) < 15:
        return 'h' # high
    else:
        return 'c' # crude

def getCopyright():
    return "Commonwealth of Australia "\
           + datetime.date.today().strftime('%Y')\
           + "\nAustralian Bureau of Meteorology, COSPPac COMP"

anomaly_grid = 'sst.forecast.anom.monthly.nc'

ds_anom = nc.Dataset(anomaly_grid, 'r+', format='NETCDF4')

lons = ds_anom.variables['lon'][:]
lats = ds_anom.variables['lat'][:]
sst = ds_anom.variables['sst'][1, :, :]

#print(sst.dimensions)

#print(sst.shape)


fig = plt.figure()
ax = plt.axes(projection=ccrs.Mercator())
ax=plt.contourf(lons, lats, sst, cmap='jet')#, vmin=min(Z[:]), vmax=max(Z))

plt.show()

