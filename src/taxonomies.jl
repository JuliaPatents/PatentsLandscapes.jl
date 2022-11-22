
"""
Define a custom taxonomic group of applications/families, with membership based on an `AbstractFilter`.

Required arguments:
* `ds`: The data source on which to operate. Membership information for the new taxon is stored in this data source.
* `taxonomy_name`: The name of the taxonomic system, e.g. "base_material".
* `taxon_name`: The name of the taxon or group within the system, e.g. "steel", "wood", etc.
* `filter`: An `AbstractFilter` that determines which applications or families are included in the taxon.

Keyword arguments:
* `expand = true`: Toggles whether existing membership entries for the taxon are left in place.
        Otherwise, the taxon is fully redefined based on the filter specified, without respecting existing memberships.
"""
function define_taxon!(
    ds::AbstractDataSource,
    taxonomy_name::String,
    taxon_name::String,
    filter::AbstractFilter;
    expand::Bool = true)

    throw(ArgumentError("$(typeof(ds)) does not allow custom taxonomies."))
end

"""
Struct representing a database filter using a custom taxonomy.
* `taxonomy`: The name of the taxonomy by which to filter.
* `included_taxa`: The names of the individual taxa to include.
    If an empty list is passed, all known taxa within the taxonomy are included.
"""
struct TaxonomicFilter <: AbstractFilter
    taxonomy::String
    included_taxa::Vector{String}
end
