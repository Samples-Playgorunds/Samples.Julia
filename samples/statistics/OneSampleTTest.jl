# https://docs.julialang.org/en/v1/manual/code-loading/
include("../packages/statistics.jl")

using HypothesisTests, Random 

Random.seed!(0); x= randn(100); y= randn(100);

println(OneSampleTTest(x,y))