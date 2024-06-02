using MatrixGenerator

function operand_generator()
    A::Array{Float64,2} = generate((90,100), [Shape.General, Properties.Random(-1, 1)])
    B::Array{Float64,2} = generate((100,6), [Shape.General, Properties.Random(-1, 1)])
    C::Array{Float64,2} = generate((6,90), [Shape.General, Properties.Random(-1, 1)])
    D::Array{Float64,2} = generate((90,100), [Shape.General, Properties.Random(-1, 1)])
    return (A, B, C, D,)
end