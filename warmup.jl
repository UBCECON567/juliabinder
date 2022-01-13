using StatsPlots
using Distributions
import BLPDemand
import Dialysis

#try
#  include(joinpath(pkgdir(BLPDemand), "test", "runtests.jl"))
#catch e
#  println("Error in BLPDemand tests, but continuing anyway")
#end
try
  include(joinpath(pkgdir(Dialysis), "test", "runtests.jl"))
catch e
  println("Error in Dialysis tests, but continuing anyway")
end

mu = 0.;
sigma = 1.0;
x = (mu - 5 * sigma):0.1:(mu + 5 * sigma);
N = Normal(mu, sigma^2);
p = plot(x, pdf.(N, x));
display(p)
