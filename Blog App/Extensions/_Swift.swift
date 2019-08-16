//

import Foundation

func print(_ text: String) {
    #if DEBUG
    let timeStamp = Date().timeWithMilliseconds()

    Swift.print("\(timeStamp)\t\(text)")
    #endif
}
