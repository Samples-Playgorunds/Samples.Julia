import Pkg
Pkg.instantiate() # downloads all dependencies for the current project
Pkg.add("JSON")

using JSON

# dictionary to write
dictionary1 = Dict(
                "James" => 9001, 
                "Jo" => 3474, 
                "Jess" =>11926,
        )
            
# pass data as a json string (how it shall be displayed in a file)
stringdata = JSON.json(dictionary1)

# write the file with the stringdata variable information
open("write_read-dictionary1.json", "w") do f
        write(f, stringdata)
     end

println(stringdata)
println(dictionary1)

dictionary2 = Dict(
                "James" => 9001, 
                "Jo" => 3474, 
                "Jess" =>11926,
                Dict(
                        "Darko" => 11, 
                        "Moljko" => 42, 
        
                )
        )

stringdata = JSON.json(dictionary2)

        
open("write_read-dictionary2.json", "w") do f
        write(f, stringdata)
end
        