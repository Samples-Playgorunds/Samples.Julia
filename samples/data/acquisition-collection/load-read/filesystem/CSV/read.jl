import Pkg
Pkg.instantiate()
Pkg.update()

filename="../../../../../../externals/Core.Math.Data/data/Pejcic_318.csv"

# https://juliadata.github.io/CSV.jl/stable/index.html
Pkg.add("CSV")
using CSV

data = CSV.read(filename, copycols = true)

Pkg.add("FileIO")
Pkg.add("CSVFiles")
using FileIO, CSVFiles, DataFrames

load(filename, spacedelim=true, header_exists=false) |> DataFrame
