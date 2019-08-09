import Foundation

class Log {
    private init() {}

    static func warning(message: String) {
        print("WARNING: \(message)")
    }

    static func error(message: String, error: Error?) {
        guard let error = error else {
            print("ERROR: \(message)")
            return
        }

        print("ERROR: \(message)\n\n\(error.localizedDescription)")
    }
}
