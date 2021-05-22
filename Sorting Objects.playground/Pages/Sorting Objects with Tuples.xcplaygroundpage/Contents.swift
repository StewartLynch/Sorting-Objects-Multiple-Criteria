/*:
 [< Previous](@previous)           [Home](Introduction)

 ## Using Tuples to Sort arrays of objects by multiple properties
 Use the static array of wines from the Wine struct to perform the requested sorts.

*/
let wines = Wine.wines
code(for: "Sort wines by Country, variety, winery, vintage") {
    let sortedWines = wines.sorted {
        ($0.country, $0.variety, $0.winery, $0.vintage)  < ($1.country, $1.variety, $1.winery, $1.vintage)
    }
    for wine in sortedWines {
        Special.padPrint(wine.country.rawValue, wine.variety, wine.winery, wine.vintage)
    }
}

code(for: "Sort wines by Country, variety, winery ,vintage (descending)") {
    let sortedWines = wines.sorted {
        ($0.country, $0.variety, $0.winery, $1.vintage)  < ($1.country, $1.variety, $1.winery, $0.vintage)
    }
    for wine in sortedWines {
        Special.padPrint(wine.country.rawValue, wine.variety, wine.winery, wine.vintage)
    }
}

code(for: "Shorthand defaults for the Wine struct") {
    let sortedWines = wines.sorted(by: >)
    for wine in sortedWines {
        Special.padPrint(wine.country.rawValue, wine.variety, wine.winery, wine.vintage)
    }
}

/*:

 [< Previous](@previous)           [Home](Introduction) 
 */
