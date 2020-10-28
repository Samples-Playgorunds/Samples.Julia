import Pkg
Pkg.instantiate() # downloads all dependencies for the current project

Pkg.add("Plots")

using Plots, DataFrames, CSV

df = CSV.read("../externals/Core.Math.Data/data/Pejcic_318.csv", copycols = true)

a = df.ATT # use something to plot;
b = df.ATV
c = df.AOP
d = df.ANN

# display(plot(histogram(a)));

p1 = (histogram(a))
p2 = (histogram(b))
p3 = (histogram(c))
p4 = (histogram(d))

plot(p1, p2, p3, p4, layout = (2, 2), legend = false)