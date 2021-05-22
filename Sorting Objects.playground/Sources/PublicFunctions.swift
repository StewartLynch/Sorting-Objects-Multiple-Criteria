
import Foundation

public func code(for title: String,
                    sampleCode: () -> Void) {
print("""
_____________________________
Results for: '\(title)'
_____________________________
""")
  sampleCode()
}


public extension String {
    func paddedBy(length: Int) -> String {
        self.padding(toLength: length, withPad: " ", startingAt: 0)
    }
}

public enum Special {
    public static func padPrint(_ items: Any..., padding:Int = 20 ) {
        var textToPrint = ""
        for item in items {
            textToPrint += "\(item)".paddedBy(length: padding)
        }
        print(textToPrint)
    }
}

