using StatsPlots
using Distributions
import BLPDemand
import Dialysis

include(joinpath(pkgdir(BLPDemand), "test", "runtests.jl"))
include(joinpath(pkgdir(Dialysis), "test", "runtests.jl"))

mu = 0.;
sigma = 1.0;
x = (mu - 5 * sigma):0.1:(mu + 5 * sigma);
N = Normal(mu, sigma^2);
p = plot(x, pdf.(N, x));
display(p)
