# https://dev.solita.fi/2020/04/07/trying-out-julia.html #

import Pkg
Pkg.instantiate() # downloads all dependencies for the current project

Pkg.add("JSON")
Pkg.add("HTTP")
Pkg.add("Plots")
Pkg.add("StatsPlots")

using HTTP, JSON, Plots, StatsPlots

response = HTTP.get("https://api.covid19api.com/country/croatia/status/confirmed")
data_from_response_body_as_string = String(response.body)

json_object = JSON.Parser.parse(data_from_response_body_as_string)

println(json_object[1])

cases = map(x -> get(x, "Cases", 0), json_object)
plot(cases)

savefig("cases_simple.png") #Save plot as png image

