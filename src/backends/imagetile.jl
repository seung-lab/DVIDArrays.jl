module ImageTileArrays

using Requests
using ..DVID

export ImageTileArray

type ImageTileArray <: DVIDArray
    base        ::DVIDBase
end

function ImageTileArray( ip::String, port::Integer, node::AbstractString )
    ImageTileArray( DVIDBase(IPv4(ip), port, node) )
end

function ImageTileArray( ip::IPv4, port::Integer, node::AbstractString )
    ImageTileArray( DVIDBase(ip, port, node) )
end

function Base.ndims(A::ImageTileArray)
    3
end

function Base.eltype( A::ImageTileArray )
    UInt8
end 

function Base.getindex(A::ImageTileArray, idxes::Union{Int, UnitRange} ...)
    sz = map(x->length(x), idxes)
    # origin = map(first, idxes)
    link = "http://$(A.base.address):$(A.base.port)/api/node/$(A.base.node)/grayscale/raw/0_1_2/$(sz[1])_$(sz[2])_$(sz[3])/$(first(idxes[1]))_$(first(idxes[2]))_$(first(idxes[3]))"
    resp = Requests.get(link)
    reshape(resp.data, sz)
end

end # end of module
