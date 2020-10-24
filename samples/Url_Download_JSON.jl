import Pkg
Pkg.instantiate()

Pkg.add("UrlDownload")
Pkg.add("CSV")
Pkg.add("DataFrames")

using UrlDownload, DataFrames, CSV


url = "https://covidtracking.com/api/v1/states/current.json"
df = download(url,  "data/covid-current.json")


# url = "https://www.stats.govt.nz/assets/Uploads/Business-price-indexes/Business-price-indexes-December-2019-quarter/Download-data/business-price-indexes-december-2019-quarter-csv.csv"
# df = urldownload(url)
# df = urldownload(url, true)