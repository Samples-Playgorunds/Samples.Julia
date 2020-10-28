#------------------------------------------------------------------------------------
import Pkg
Pkg.instantiate()
Pkg.update()

# high level CSV API
# https://juliadata.github.io/CSV.jl/stable/index.html
# https://www.geeksforgeeks.org/working-with-csv-files-in-julia/
Pkg.add("CSV")
import CSV
using CSV
#------------------------------------------------------------------------------------

file_path_csv = "../../../../../../externals/Core.Math.Data/data/HolisticWare.Core.Sample.Data/CSV/Pejcic_318.csv"


data = CSV.read(file_path_csv, copycols = true)

println(size(data),"\n")
println(names(data),"\n")
println(first(data, 6),"\n")
# println(describe(data),"\n")

Pkg.add("FileIO")
Pkg.add("CSVFiles")
using FileIO, CSVFiles, DataFrames

data_frame_csv_api_1 = load(file_path_csv, spacedelim=true, header_exists=false) |> DataFrame

println(size(data_frame_csv_api_1),"\n")
println(names(data_frame_csv_api_1),"\n")
println(first(data_frame_csv_api_1, 6),"\n")
# println(describe(data_frame_csv_api),"\n")

data_frame_csv_api_2 = load(file_path_csv) |> DataFrame

println(size(data_frame_csv_api_2),"\n")
println(names(data_frame_csv_api_2),"\n")
println(first(data_frame_csv_api_2, 6),"\n")
# println(describe(data_frame_csv_api),"\n")

#------------------------------------------------------------------------------------
