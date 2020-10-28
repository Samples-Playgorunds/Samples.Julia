import Pkg
Pkg.instantiate()

Pkg.add("Statistics")
Pkg.add("DataFrames")
Pkg.add("CSV")
Pkg.add("StatsBase")

using DataFrames, CSV, Statistics, StatsBase
data = CSV.read("../externals/Core.Math.Data/data/Pejcic_318.csv", copycols = true)

# describe(data[:ATT])

for col in eachcol(data); 
    if (eltype(col[2]) <: Real) println(describe(col[2])); 
    end; 
end;