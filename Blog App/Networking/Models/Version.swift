import Foundation

struct Versions: Codable {
  let current: Version
  let required: Version
  let suggested: Version
}

struct Version: Codable, CustomStringConvertible {
  let major: Int
  let minor: Int
  let build: Int
  let message: String?
  let reminders: Int?

  var description: String {
    return "\(major).\(minor).\(build) | Reminders: \(reminders ?? 0) | Message: \(message ?? "N/A")"
  }
}
