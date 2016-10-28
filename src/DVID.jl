module DVID

export DVIDArray

abstract AbstractDVIDArray <: DenseArray

include("base.jl")
include("backends.jl")

end # end of DVIDArrays module
