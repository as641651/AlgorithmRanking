using LinearAlgebra.BLAS
using LinearAlgebra

"""
    algorithm0(ml0::Array{Float64,2}, ml1::Array{Float64,2}, ml2::Array{Float64,2}, ml3::Array{Float64,2})

Compute
Y = (A B C D).

Requires at least Julia v1.0.

# Arguments
- `ml0::Array{Float64,2}`: Matrix A of size 90 x 100 with property FullRank.
- `ml1::Array{Float64,2}`: Matrix B of size 100 x 6 with property FullRank.
- `ml2::Array{Float64,2}`: Matrix C of size 6 x 90 with property FullRank.
- `ml3::Array{Float64,2}`: Matrix D of size 90 x 100 with property FullRank.
"""                    
function algorithm0(ml0::Array{Float64,2}, ml1::Array{Float64,2}, ml2::Array{Float64,2}, ml3::Array{Float64,2})
    # cost: 3.24e+05 FLOPs
    # A: ml0, full, B: ml1, full, C: ml2, full, D: ml3, full
    ml4 = Array{Float64}(undef, 6, 100)
    # tmp3 = (C D)
    gemm!('N', 'N', 1.0, ml2, ml3, 0.0, ml4)

    # A: ml0, full, B: ml1, full, tmp3: ml4, full
    ml5 = Array{Float64}(undef, 90, 6)
    # tmp1 = (A B)
    gemm!('N', 'N', 1.0, ml0, ml1, 0.0, ml5)

    # tmp3: ml4, full, tmp1: ml5, full
    ml6 = Array{Float64}(undef, 90, 100)
    # tmp6 = (tmp1 tmp3)
    gemm!('N', 'N', 1.0, ml5, ml4, 0.0, ml6)

    # tmp6: ml6, full
    # Y = tmp6
    return (ml6)
end