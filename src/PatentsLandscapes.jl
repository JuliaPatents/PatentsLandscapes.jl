module PatentsLandscapes

using Dates
using DataFrames
using PatentsBase

# Custom taxonomies
export define_taxon!, TaxonomicFilter

# Analysis levels
export AnalysisLevel, Applications, Families

# Grouping variables
export Grouping, Applicants, Jurisdictions, TimeResolution, Years, Months, TimeTrend,
    Taxonomy

# Analysis types
export Analysis, Frequency

# Analysis functions
export prepdata

include("taxonomies.jl")
include("levels.jl")
include("groupings.jl")
include("analyses.jl")

end
