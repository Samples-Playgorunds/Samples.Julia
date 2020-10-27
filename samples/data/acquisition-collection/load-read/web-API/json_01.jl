# https://gist.github.com/silgon/0ba43e00e0749cdf4f8d244e67cd9d6a
# https://riptutorial.com/julia-lang/example/19443/parsing-json
# https://github.com/JuliaIO/JSON.jl 

import Pkg; 
Pkg.add("HTTP")
Pkg.add("JSON")
Pkg.add("JSON")
Pkg.add("JSON3")
Pkg.add("LazyJSON")


import HTTP
import JSON
import JSON;
import JSON3;
import LazyJSON;

using JSON
using HTTP
using JSON;
using JSON3;
using LazyJSON;

url = "https://raw.githubusercontent.com/xamarin/AndroidX/20200915-mono.cecil-fix/config.json"
resp = HTTP.get(url)

str = String(resp.body)
println("str = ", str)

jobj_JSON = JSON.parse(str)
println("jobj_JSON = ", jobj_JSON)

jobj_JSON3 = JSON3.read(str)
println("jobj_JSON3 = ", jobj_JSON)


jobj_LazyJSON = LazyJSON.value(str)
println("jobj_LazyJSON = ", jobj_LazyJSON)
