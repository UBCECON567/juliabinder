using PackageCompiler
create_sysimage([:Pluto, :PlutoUI,
                 :BLPDemand, :CodeTracking, :Combinatorics,
                 :DataFrames, :Dialysis,
                 :Distributions,
                 :FixedEffectModels, :ForwardDiff, :GLM,
                 :InteractiveUtils, :Ipopt, :LineSearches,
                 :LinearMaps, :Markdown, :NLsolve,
                 :OffsetArrays, :Optim, :PrettyTables,
                 :Revise, :StatsPlots, :JuMP];
                precompile_execution_file = "warmup.jl",
                #replace_default = true,
                sysimage_path="/home/jovyan/sysimage.so",
                cpu_target = PackageCompiler.default_app_cpu_target())
