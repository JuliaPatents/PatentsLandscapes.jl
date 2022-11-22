
"Abstract type representing a possible grouping variable in a patent analyis."
abstract type Grouping end

"Dispatch type indicating an analysis of patent data grouped by applicants."
Base.@kwdef struct Applicants <: Grouping
    applicants::Union{Vector{Int}} = []
end

"Dispatch type indicating an analysis of patent data grouped by jurisdictions."
Base.@kwdef struct Jurisdictions <: Grouping
    jurisdictions::Vector{String} = []
end

"Abstract type representing the temporal resolution of a trend analysis."
abstract type TimeResolution end

"Dispatch type indicating a trend analysis should have yearly resolution."
struct Years <: TimeResolution end

"Dispatch type indicating a trend analysis should have monthly resolution."
struct Months <: TimeResolution end

"Dispatch type indicating an analysis of patent data over time (trend analysis)."
Base.@kwdef struct TimeTrend <: Grouping
    start::Date = Date("1900-01-01")
    stop::Date = Date("2100-01-01")
    resolution::TimeResolution = Years()
end

"Dispatch type indicating an analysis of patent data grouped by a custom taxonomy."
Base.@kwdef struct Taxonomy <: Grouping
    name::String
    included_taxa::Vector{String}
end

Taxonomy(name::String) = Taxonomy(name, Vector{String}())
