export AbstractDVIDArray, DVIDBase

abstract AbstractDVIDArray <: AbstractArray

immutable DVIDBase
    address     ::IPAddr
    port        ::Integer
    node       ::String
end
