# https://dev.solita.fi/2020/04/07/trying-out-julia.html #

import Pkg
Pkg.instantiate() # downloads all dependencies for the current project

Pkg.add("JSON")
Pkg.add("HTTP")
Pkg.add("Plots")
Pkg.add("StatsPlots")

using HTTP, JSON, Plots, StatsPlots

resp = HTTP.get("https://api.covid19api.com/country/croatia/status/confirmed")
str = String(resp.body)
jobj = JSON.Parser.parse(str)

println(jobj[1])

cases = map(x -> get(x, "Cases", 0), jobj)
plot(cases)

savefig("cases_simple.png") #Save plot as png image

