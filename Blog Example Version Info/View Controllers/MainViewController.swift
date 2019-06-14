import UIKit

class MainViewController: UIViewController {
  @IBAction func infoButtonTouchUpInside(_ sender: Any) {
    showOkAlert(title: "Info",
                message: Bundle.main.versionString)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }
}
