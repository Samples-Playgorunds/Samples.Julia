import Pkg
Pkg.instantiate() # downloads all dependencies for the current project

using DataFrames, CSV, StatsBase

df = CSV.read("../externals/Core.Math.Data/data/Pejcic_318.csv", copycols = true)

println(corspearman(df.ATV, df.ATT))