import Foundation

public struct Wine: Comparable {
    public static func < (lhs: Wine, rhs: Wine) -> Bool {
        (lhs.country, lhs.variety, lhs.winery, lhs.vintage)  < (rhs.country, rhs.variety, rhs.winery, rhs.vintage)
    }
    
    public static func > (lhs: Wine, rhs: Wine) -> Bool {
        (lhs.country, lhs.variety, lhs.winery, rhs.vintage)  < (rhs.country, rhs.variety, rhs.winery, lhs.vintage)
    }

    public enum Country:String, Comparable {
        public static func < (lhs: Wine.Country, rhs: Wine.Country) -> Bool {
            lhs.rawValue < rhs.rawValue
        }
        
        case ca = "Canada"
        case us = "United States"
        case au = "Austrailia"
    }
    
    public let country: Country
    public let variety: String
    public let winery: String
    public let vintage: Int

    public static var wines: [Wine] {
        [
            Wine(country: .ca, variety: "Chardonnay", winery: "Sumac Ridge", vintage: 2017),
            Wine(country: .ca, variety: "Chardonnay", winery: "50th Parallel", vintage: 2016),
            Wine(country: .ca, variety: "Malbec", winery: "Ancient Hill", vintage: 2018),
            Wine(country: .ca, variety: "Merlot", winery: "Sumac Ridge", vintage: 2016),
            Wine(country: .ca, variety: "Pinot Gris", winery: "Ancient Hill", vintage: 2017),
            Wine(country: .us, variety: "Chablis", winery: "Beringer", vintage: 2016),
            Wine(country: .us, variety: "Chardonnay", winery: "Josh Cellars", vintage: 2017),
            Wine(country: .us, variety: "Chardonnay", winery: "Kendall Jackson", vintage: 2016),
            Wine(country: .us, variety: "Sauvignon Blanc", winery: "Kendal Jackson", vintage: 2015),
            Wine(country: .us, variety: "Merlot", winery: "Josh Cellars", vintage: 2018),
            Wine(country: .us, variety: "Chardonnay", winery: "Beringer", vintage: 2017),
            Wine(country: .au, variety: "Chardonnay", winery: "Lindeman's", vintage: 2019),
            Wine(country: .au, variety: "Chardonnay", winery: "George Wyndham", vintage: 2018),
            Wine(country: .au, variety: "Chardonnay", winery: "Lindeman's", vintage: 2016),
            Wine(country: .au, variety: "Shiraz", winery: "Rosemount", vintage: 2017),
            Wine(country: .au, variety: "Merlot", winery: "George Wyndham", vintage: 2015),
            Wine(country: .au, variety: "Chardonnay", winery: "Lindeman's", vintage: 2018),
            Wine(country: .ca, variety: "Merlot", winery: "50th Parallel", vintage: 2017),
        ]
    }
}





