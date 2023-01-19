module PatentsLandscapes

using Dates
using DataFrames
using PatentsBase

# Custom taxonomies
export define_taxon!, TaxonomicFilter

# Grouping variables
export Grouping, Applicants, Jurisdictions, TimeResolution, Years, Months, TimeTrend,
    Taxonomy

# Analysis types
export Analysis, Frequency

# Analysis functions
export prepdata

include("taxonomies.jl")
include("groupings.jl")
include("analyses.jl")

end
