import Pkg
Pkg.instantiate() # downloads all dependencies for the current project

Pkg.add("Plots")


using Plots, DataFrames, CSV

df = CSV.read("../externals/Core.Math.Data/data/Pejcic_318.csv", copycols = true)

a = df.ATT # use something to plot;

display(plot(histogram(a)));