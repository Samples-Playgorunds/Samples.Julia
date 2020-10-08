# https://gist.github.com/silgon/0ba43e00e0749cdf4f8d244e67cd9d6a
# https://riptutorial.com/julia-lang/example/19443/parsing-json
# https://github.com/JuliaIO/JSON.jl 

import Pkg; 
Pkg.add("HTTP")
Pkg.add("JSON")

import HTTP
import JSON

using JSON
using HTTP

# tags
# https://api.github.com/repos/xamarin/AndroidX/tags
# https://api.github.com/repos/xamarin/Essentials/tags
# releases
# https://api.github.com/repos/xamarin/AndroidX/releases
# https://api.github.com/repos/xamarin/Essentials/releases

url = "https://raw.githubusercontent.com/xamarin/AndroidX/20200915-mono.cecil-fix/config.json"
resp = HTTP.get(url)

str = String(resp.body)
println("str = ", str)

jobj = JSON.parse(str)
println("jobj = ", jobj)
