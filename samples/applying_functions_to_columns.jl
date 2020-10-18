
using DataFrames, CSV, Statistics

df = CSV.read("../externals/Core.Math.Data/data/Pejcic_318.csv", copycols = true)

# println(describe(df),"\n")

println([mean(col) for col in eachcol(df[:, [:ATV, :ATT]])])

# head(df)

# mean.(eachcol(df)) 

# describe(df)