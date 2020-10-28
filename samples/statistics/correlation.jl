import Pkg
Pkg.instantiate() # downloads all dependencies for the current project

Pkg.add("RDatasets")

using DataFrames, CSV, RDatasets, Statistics

df = CSV.read("../externals/Core.Math.Data/data/Pejcic_318.csv", copycols = true)

println(Statistics.cor(df.ATV, df.ATT))

# https://docs.julialang.org/en/v1/stdlib/Statistics/ #
