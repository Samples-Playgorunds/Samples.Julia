include("./packages/data-frame.jl")

using DataFrames, CSV, Statistics, StatsBase

include("./file-system/read-file-csv-delimited.jl")

print(data)

# println((data),"\n")