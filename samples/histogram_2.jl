using StatsBase, Plots, FreqTables

# Univariate
# h = fit(Histogram, rand(100))
# h = fit(Histogram, rand(100), 0:0.1:1.0)
h = fit(Histogram, rand(100), nbins=10)
# h = fit(Histogram, rand(100), weights(rand(100)), 0:0.1:1.0)
# h = fit(Histogram, [20], 0:20:100)
# h = fit(Histogram, [20], 0:20:100, closed=:left)

# Multivariate
# h = fit(Histogram, (rand(100),rand(100)))
# h = fit(Histogram, (rand(100),rand(100)),nbins=10)

display(h)
# plot(h)
