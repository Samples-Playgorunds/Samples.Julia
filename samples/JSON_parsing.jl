import Pkg
Pkg.instantiate() # downloads all dependencies for the current project
Pkg.add("JSON")

using JSON

JSON.parse("""{
           "this": ["is", "json"],
           "numbers": [85, 16, 12.0],
           "and": [true, false, null]
       }""")

