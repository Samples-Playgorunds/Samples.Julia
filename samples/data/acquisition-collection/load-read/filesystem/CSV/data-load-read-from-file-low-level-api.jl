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
