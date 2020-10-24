import Pkg
Pkg.instantiate()

Pkg.add("UrlDownload")
Pkg.add("CSV")
Pkg.add("DataFrames")

using UrlDownload, DataFrames, CSV

url = "https://covidtracking.com/api/v1/states/current.csv"
# df = urldownload(url)
df = urldownload(url, true)

url = "https://covidtracking.com/api/v1/states/current.csv"
res = urldownload(url, parser = x -> DataFrame(CSV.File(IOBuffer(x))))

