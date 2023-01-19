
"Abstract type representing a type of patent analysis."
abstract type Analysis end

"Dispatch type indicating that an analysis of frequencies should be conducted."
struct Frequency <: Analysis end

"""
    prepdata(
        ds::AbstractDataSource,
        type::Analysis,
        level::AnalysisLevel,
        [filter::AbstractFilter],
        [g1::Grouping],
        [g2::Grouping],
        [g3::Grouping]
    )::DataFrame

Perform data retrieval and calculation for an analysis, yielding the results as a `DataFrame`.

Parameters (in order):

* `ds`: The `AbstractDataSource` containing the data for the analysis.
* `type`: The type of `Analysis` to be conducted.
* `level`: The `DataLevel` for the analysis, e.g. `ApplicationLevel()`, `FamilyLevel()` etc.
* `filter` (optional): A filter defining the subset of data to be included in the analysis.
    If not specified, all data stored in `ds` is included.
* `g1` - `g3` (optional): Up to three `Grouping` categories to use in the analysis.
"""
function prepdata end

function prepdata(ds::AbstractDataSource, type::Analysis, v...)
    throw(ArgumentError("$(typeof(ds)) does not allow analyses of type $(typeof(type))."))
end
