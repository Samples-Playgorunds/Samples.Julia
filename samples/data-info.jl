include("./packages/csv.jl")
include("./packages/statistics.jl")

using DataFrames, CSV, Statistics, StatsBase

include("./file-system/read-file-csv.jl")

println(size(data_read_01),"\n")
println(names(data_read_01),"\n")
println(first(data_read_01, 6),"\n")
println(describe(data_read_01),"\n")
