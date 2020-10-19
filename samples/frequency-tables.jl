# https://github.com/nalimilan/FreqTables.jl #
##############################################

import Pkg
Pkg.instantiate() # downloads all dependencies for the current project
Pkg.add("FreqTables")

using DataFrames, CSV, FreqTables, DelimitedFiles

df = CSV.read("../externals/Core.Math.Data/data/Pejcic_318.csv", copycols = true)

println(df.MJESTO)

af = freqtable(df.MJESTO)
println(af)

rf = prop(af)
println(rf)

af_2 = freqtable(df.SPOL, df.RAZRED)
println(af_2)