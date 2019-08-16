import Foundation

extension Date {
    private static var timingFormatter: DateFormatter = {
        let formatter = DateFormatter()

        formatter.dateFormat = "HH:mm:ss.SSSS"
        formatter.locale = Locale.current
        formatter.timeZone = TimeZone.current

        return formatter
    }()

    func timeWithMilliseconds() -> String {
        return Date.timingFormatter.string(from: self)
    }
}
