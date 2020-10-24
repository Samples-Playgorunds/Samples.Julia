using CSV, DataFrames, Feather, Gadfly, IJulia, JSON, RDatasets

# data = readdlm("iris_dataset.csv", ',')

iris = CSV.read("iris_dataset.csv", header=true, delim=',', copycols = true)

print(iris)

print(describe(iris))

# print(describe(iris, stats=[:q25, :q75, :first, :last]))

# print(describe(iris, stats=:all))

# Pkg.add("Statistics")

using Statistics

print(mean(iris[:sepallength]))

for x in names(iris)[1:end-1]
    for y in names(iris)[1:end-1]
        println("$x /t $y /t $(cor(iris[x], iris[y]))")
    end
    println("---------------------------------------------")
end

# columns to array
sepallength = Array(iris[:sepallength])
# print(sepallength)

# DataFrame to matrix
irisarr = convert(Array, iris[:,:])

iris[1:3, [:petallength, :petalwidth]] 

# CSV.write("test_iris.csv", iris)