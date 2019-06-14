import Foundation

extension Bundle {
  private var releaseVersionNumber: String {
    return infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
  }

  private var buildVersionNumber: String {
    return infoDictionary?["CFBundleVersion"] as? String ?? ""
  }

  var bundleID: String {
    return Bundle.main.bundleIdentifier?.lowercased() ?? ""
  }

  var versionString: String {
    return "Version \(releaseVersionNumber).\(buildVersionNumber)".trimmingCharacters(in: .whitespacesAndNewlines)
  }
}
