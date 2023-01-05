using Documenter, PatentsLandscapes

makedocs(
    modules = [PatentsLandscapes],
    sitename = "PatentsLandscapes.jl",
    format = Documenter.HTML(; prettyurls = get(ENV, "CI", nothing) == "true")
)

deploydocs(
    repo = "github.com/JuliaPatents/PatentsLandscapes.jl.git",
    devbranch = "main"
)
