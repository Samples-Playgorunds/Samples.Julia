#-----------------------------------------------------------------------------------------------
# 1st run - packages installation

import Pkg; 
Pkg.add("CSV")
Pkg.add("DataFrames")
Pkg.add("StatsBase")

file_path = "../../../../../../externals/Core.Math.Data/data/Pejcic_318.csv"

using DataFrames, CSV, Statistics, StatsBase

data = CSV.read(file_path, copycols = true)

# @show data.ATV
# println()

for col in eachcol(data,true); 
    if  (
        eltype(col[2]) <: Real) 
        println(mean(col[2])
        ); 
    end; 
end;