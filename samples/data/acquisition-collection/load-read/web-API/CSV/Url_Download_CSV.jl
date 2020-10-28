using Pkg
Pkg.add("UrlDownload")
Pkg.add("DataFrames")
Pkg.add("CSV")

using UrlDownload
using DataFrames
using CSV

url = "https://covidtracking.com/api/v1/states/current.csv"
df = urldownload(url) |> DataFrame