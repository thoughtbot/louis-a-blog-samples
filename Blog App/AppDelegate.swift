import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    print("\(Bundle.main.bundleID) - \(Bundle.main.versionString)")

    getUpdateInfo()

    return true
  }

  func getUpdateInfo() {
    UpdateInfo.get()
      .done { versions -> Void in
        print("Current  : \(versions.current)")
        print("Required : \(versions.required)")
        print("Suggested: \(versions.suggested)")
      }.catch { error in
        Log.error(message: "Error in UpdateInfo.get()", error: error)
      }.finally {
    }
  }

  func applicationWillResignActive(_ application: UIApplication) {
  }

  func applicationDidEnterBackground(_ application: UIApplication) {
  }

  func applicationWillEnterForeground(_ application: UIApplication) {
  }

  func applicationDidBecomeActive(_ application: UIApplication) {
  }

  func applicationWillTerminate(_ application: UIApplication) {
  }
}
