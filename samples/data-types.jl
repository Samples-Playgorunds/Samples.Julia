using DataFrames, CSV, Statistics, StatsBase
data = CSV.read("../externals/Core.Math.Data/data/Pejcic_318.csv", copycols = true)

println(describe(data),"\n")
println(names(data),"\n")
println(eltype.(eachcol(data)),"\n")