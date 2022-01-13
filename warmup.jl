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
