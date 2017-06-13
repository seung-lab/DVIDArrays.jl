DVIDArrays.jl
=============

Julia interface to [DVID](https://github.com/janelia-flyem/dvid) for Distributed, Versioned, Image-oriented Dataservice

# Installation
`Pkg.clone("https://github.com/seung-lab/DVIDArrays.jl.git")`

# Usage

```
using DVIDArrays
using DVIDArrays.ImageTileArrays


a = ImageTileArray("Address.of.DVID.server", 8000, "5c")

arr = a[2305:2604, 1473:1772,1281:1282]

using PyPlot
PyPlot.imshow( arr[:,:,1], cmap="gray" )
```
