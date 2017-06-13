using DVIDArrays
using DVIDArrays.ImageTileArrays


a = ImageTileArray("130.211.134.112", 8000, "5c")

arr = a[2305:2604, 1473:1772,1281:1282]

using PyPlot
PyPlot.imshow( arr[:,:,1], cmap="gray" )
