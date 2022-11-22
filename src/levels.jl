
"Abstract type representing the level of a patent analysis (e.g. patent families, individual applications etc.)"
abstract type AnalysisLevel end

"Dispatch type indicating an analysis at the level of individual patent applications."
struct Applications <: AnalysisLevel end

"Dispatch type indicating an analysis at the level of patent families."
struct Families <: AnalysisLevel end
