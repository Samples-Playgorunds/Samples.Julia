import Pkg
Pkg.instantiate() # downloads all dependencies for the current project

Pkg.add("JSON")
Pkg.add("HTTP")
Pkg.add("JSONTables")

using HTTP, JSON, JSONTables

# treat a json object of arrays or array of objects as a "table"
jtable = jsontable(json_source)

# turn json table into DataFrame
df = DataFrame(jtable)

# turn DataFrame back into json object of arrays
objecttable(df)

# turn DataFrame back into json array of objects
arraytable(df)
