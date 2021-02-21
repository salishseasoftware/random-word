import Foundation

public enum Transformer: String, CaseIterable {
    case capitalize, uppercase, lowercase, none

    public func transform(_ word: String) -> String {
        switch self {
        case .capitalize:
            return word.capitalized
        case .uppercase:
            return word.uppercased()
        case .lowercase:
            return word.lowercased()
        case .none:
            return word
        }
    }
}
