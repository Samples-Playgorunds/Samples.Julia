import Pkg
Pkg.instantiate() # downloads all dependencies for the current project

Pkg.add("JSON")
Pkg.add("HTTP")
Pkg.add("DataFrames")
Pkg.add("JSON3")
Pkg.add("JSONTables")

Pkg.add("Plots")
Pkg.add("StatsPlots")

using HTTP, JSON, Plots, StatsPlots, DataFrames, JSON3, JSONTables

# JSON.parsefile("COVID-19 cases worldwide.json")

f = open("COVID-19 cases worldwide.json","r")

dicttxt = read(f,String)

dict2=JSON.parse(dicttxt)

println(dict2)