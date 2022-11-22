using PatentsLandscapes
using Documenter

DocMeta.setdocmeta!(PatentsLandscapes, :DocTestSetup, :(using PatentsLandscapes); recursive=true)

makedocs(;
    modules=[PatentsLandscapes],
    authors="Alex Seitz <alex.seitz1@gmx.net> and contributors",
    repo="https://github.com/Seitzal/PatentsLandscapes.jl/blob/{commit}{path}#{line}",
    sitename="PatentsLandscapes.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Seitzal.github.io/PatentsLandscapes.jl",
        edit_link="default",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Seitzal/PatentsLandscapes.jl",
    devbranch="default",
)
