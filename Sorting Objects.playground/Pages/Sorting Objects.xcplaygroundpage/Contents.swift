/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 
 ## Sorting objects by property or multiple properties
 Use the static array of wines from the Wine struct to perform the requested sorts.
 */
let wines = Wine.wines

code(for: "Sort Wines by Country") {
    let sortedWines = wines.sorted {
        $0.country < $1.country
    }
    for wine in sortedWines {
        Special.padPrint(wine.country.rawValue, wine.variety)
    }
}

code(for: "Sort Wines by country and then Variety") {
    let sortedWines = wines.sorted {
        if $0.country == $1.country {
            return $0.variety < $1.variety
        }
        return $0.country < $1.country
    }
    for wine in sortedWines {
        Special.padPrint(wine.country.rawValue, wine.variety, wine.winery)
    }
}

code(for: "Sort Wines by country, variety, winery") {
    let sortedWines = wines.sorted {
        if $0.country == $1.country {
            if $0.variety == $1.variety {
                return $0.winery < $1.winery
            }
            return $0.variety < $1.variety
        }
        return $0.country < $1.country
    }
    for wine in sortedWines {
        Special.padPrint(wine.country.rawValue, wine.variety, wine.winery, wine.vintage)
    }
}
/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
