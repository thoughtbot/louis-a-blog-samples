//

import Foundation
import UIKit

extension UIViewController {
  func showOkAlert(title: String, message: String) {
    let alert = UIAlertController(title: title,
                                  message: message,
                                  preferredStyle: .alert)

    alert.addAction(UIAlertAction(title: "OK",
                                  style: .default,
                                  handler: nil))

    present(alert, animated: true, completion: nil)
  }
}
