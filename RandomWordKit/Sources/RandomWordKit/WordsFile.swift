import Foundation

public struct WordsFile {
    let words: [String]

    public init(path: String) throws {
        let data = try String(contentsOfFile: path, encoding: .utf8)
        self.words = data.components(separatedBy: .newlines)
    }

    public func random(count: Int = 1, transformer: Transformer = .none) -> [String] {
        var randomWords = [String]()

        (0 ..< count).forEach { _ in
            guard let word = words.randomElement() else { return }
            randomWords.append(transformer.transform(word))
        }
        
        return randomWords
    }
}
