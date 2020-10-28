import Pkg
Pkg.instantiate() # downloads all dependencies for the current project
Pkg.add("JSON")

using JSON

dict = Dict()
open("contacts.json", "r") do f
    global dict
    dicttxt = readstring(f)  # file information to string
    dict=JSON.parse(dicttxt)  # parse and transform data
end
for (values) in dict["emergencyContacts"]
         println(values)
end