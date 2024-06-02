using LinearAlgebra.BLAS
using LinearAlgebra

function algorithm4(ml0::Array{Float64,2}, ml1::Array{Float64,2}, ml2::Array{Float64,2}, ml3::Array{Float64,2})
    start::Float64 = 0.0
    finish::Float64 = 0.0
    Benchmarker.cachescrub()
    start = time_ns()

    # cost: 3.35e+06 FLOPs
    # A: ml0, full, B: ml1, full, C: ml2, full, D: ml3, full
    ml4 = Array{Float64}(undef, 100, 90)
    # tmp2 = (B C)
    gemm!('N', 'N', 1.0, ml1, ml2, 0.0, ml4)

    # A: ml0, full, D: ml3, full, tmp2: ml4, full
    ml5 = Array{Float64}(undef, 90, 90)
    # tmp4 = (A tmp2)
    gemm!('N', 'N', 1.0, ml0, ml4, 0.0, ml5)

    # D: ml3, full, tmp4: ml5, full
    ml6 = Array{Float64}(undef, 90, 100)
    # tmp6 = (tmp4 D)
    gemm!('N', 'N', 1.0, ml5, ml3, 0.0, ml6)

    # tmp6: ml6, full
    # Y = tmp6

    finish = time_ns()
    return (tuple(ml6), (finish-start)*1e-9)
end