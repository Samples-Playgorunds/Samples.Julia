import Pkg
Pkg.instantiate() # downloads all dependencies for the current project

Pkg.add("Distributions")

using StatsBase, StatsPlots, Distributions

# Example data 
data = (randn(10_000), randn(10_000))

# Plot StatsPlots 2D histogram
histogram2d(data)

# Fit a histogram with StatsBase
h = fit(Histogram, data)
x = searchsortedfirst(h.edges[1], 0.1)      # returns 10
y = searchsortedfirst(h.edges[2], 0.1)      # returns 11
h.weights[x, y]                             # returns 243

# Or as a function
function get_freq(h, xval, yval)
    x = searchsortedfirst(h.edges[1], xval)
    y = searchsortedfirst(h.edges[2], yval)
    h.weights[x, y]
end

get_freq(h, 1.4, 0.6)                       # returns 32