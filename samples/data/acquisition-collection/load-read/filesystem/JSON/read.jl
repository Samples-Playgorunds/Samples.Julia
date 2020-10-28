import Pkg
Pkg.instantiate() # downloads all dependencies for the current project
Pkg.add("JSON")

using JSON

dict = Dict()
open("contacts.json", "r") do f
    global dict
    dicttxt = read(f, String)  # file information to string
    dict=JSON.parse(dicttxt)  # parse and transform data
end

first_names = String[]

for contact in dict["emergencyContacts"]
    push!(first_names, split(contact["name"]," ")[1])
end

first_names