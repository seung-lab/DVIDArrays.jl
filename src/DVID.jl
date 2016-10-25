module DVID

export DVIDArray

abstract DVIDArray <: DenseArray

include("base.jl")
include("backends.jl")

end # end of DVIDArrays module
