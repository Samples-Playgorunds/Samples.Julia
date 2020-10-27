import Pkg
Pkg.instantiate() # downloads all dependencies for the current project
Pkg.add("JSON")

using JSON

# dictionary to write
dict1 = Dict("James" => 9001, "Jo" => 3474, "Jess" =>11926)
            
# pass data as a json string (how it shall be displayed in a file)
stringdata = JSON.json(dict1)

# write the file with the stringdata variable information
open("write_read.json", "w") do f
        write(f, stringdata)
     end

println(dict1)