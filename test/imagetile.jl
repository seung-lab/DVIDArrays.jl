using DVID
using DVID.ImageTileArrays


a = ImageTileArray("130.211.134.112", 8000, "5c")

arr = a[2304:2603, 1472:1771,1280:1281]

using PyPlot
PyPlot.imshow( arr[:,:,1] )
