import Foundation
import ArgumentParser
import RandomWordKit

extension Transformer: ExpressibleByArgument {}

struct RandomWord: ParsableCommand {
    @Option(name: .shortAndLong, help: "Path to words file.")
    var file: String = "/usr/share/dict/words"

    @Option(name: .shortAndLong, help: "Path to words file.")
    var count: Int = 1

    @Option(name: .shortAndLong, help: "Separator to use when combining words.")
    var separator: String = " "

    @Option(name: .shortAndLong, help: "Output format [capitalize|uppercase|lowercase]")
    var transformer: Transformer = .none

    mutating func run() throws {
        let wordsFile = try WordsFile(path: file)
        let words = wordsFile.random(count: count, transformer: transformer)
        print(words.joined(separator: separator))
    }
}

RandomWord.main()
