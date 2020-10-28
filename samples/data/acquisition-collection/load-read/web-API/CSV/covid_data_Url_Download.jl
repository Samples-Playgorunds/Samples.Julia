# https://discourse.julialang.org/t/ann-urldownload-jl/37841 #

import Pkg
Pkg.instantiate()

Pkg.add("UrlDownload")
Pkg.add("CSV")
Pkg.add("DataFrames")

using UrlDownload, DataFrames, CSV

url = "https://www.stats.govt.nz/assets/Uploads/Business-price-indexes/Business-price-indexes-December-2019-quarter/Download-data/business-price-indexes-december-2019-quarter-csv.csv"
# data_frame = urldownload(url)
data_frame = urldownload(url, true)

res = urldownload(url, parser = x -> DataFrame(CSV.File(IOBuffer(x))))

res
# url = "https://covidtracking.com/api/v1/states/current.csv"
# res = urldownload(url, parser = x -> DataFrame(CSV.File(IOBuffer(x))))

