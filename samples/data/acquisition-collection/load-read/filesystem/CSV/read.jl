import Pkg
Pkg.instantiate()
Pkg.update()

file_path_csv = "../../../../../../externals/Core.Math.Data/data/Pejcic_318.csv"

#------------------------------------------------------------------------------------
# low level file API
# https://en.wikibooks.org/wiki/Introducing_Julia/Working_with_text_files
file_handle = open(file_path_csv)

totaltime, totallines = open(file_path_csv) do file_handle_1
    linecounter = 0
    timetaken = @elapsed for l in eachline(file_handle_1)
        linecounter += 1
    end
    (timetaken, linecounter)
end

close(file_handle)

open(file_path_csv) do file_handle_1
    line = 1
    while !eof(file_handle_1)
      x = readline(file_handle_1)
      println("$line $x")
      line += 1
    end
  end

  open(file_path_csv) do file_handle_1
    for i in enumerate(eachline(file_handle_1))
        println(i[1], ": ", i[2])
      end
  end

  data_as_string = read(file_path_csv, String)

#------------------------------------------------------------------------------------


#------------------------------------------------------------------------------------
# high level CSV API
# https://juliadata.github.io/CSV.jl/stable/index.html
# https://www.geeksforgeeks.org/working-with-csv-files-in-julia/
Pkg.add("CSV")
using CSV

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
