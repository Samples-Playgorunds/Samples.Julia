# using Pkg
# Pkg.add("DelimitedFiles")

using DelimitedFiles

data = readdlm("../externals/Core.Math.Data/data/Pejcic_318.csv", ',')

print(data)

# println((data),"\n")