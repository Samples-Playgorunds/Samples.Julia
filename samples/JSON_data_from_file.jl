using JSON, Plots, StatsPlots

#j_data = open("COVID19_Finland.json", "r")

j_data = read("COVID19-Finland.json", String)


jobj = JSON.Parser.parse(j_data)

println(jobj[1])

cases = map(x -> get(x, "Cases", 0), jobj)
plot(cases, xlabel = "Number of Cases")