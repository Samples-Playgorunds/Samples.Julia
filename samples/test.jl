import JSON
dict = Dict()
open("contacts.json", "r") do f
    global dict
    dicttxt = readstring(f)  # file information to string
    dict=JSON.parse(dicttxt)  # parse and transform data
end
for (values) in dict["emergencyContacts"]
         println(values)
end