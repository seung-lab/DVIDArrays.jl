module DVID

export AbstractDVIDArray

abstract AbstractDVIDArray <: DenseArray

include("base.jl")
include("backends.jl")

end # end of DVIDArrays module
