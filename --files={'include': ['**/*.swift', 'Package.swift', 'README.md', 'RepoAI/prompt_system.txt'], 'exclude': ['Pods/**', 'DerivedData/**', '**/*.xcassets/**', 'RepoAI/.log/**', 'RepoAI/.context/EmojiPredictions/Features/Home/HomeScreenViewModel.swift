import SwiftUI

@MainActor
class HomeScreenViewModel: ObservableObject {
    @Published var emojiText: String = ""
    private let emojiPool = "😀😅🥳🤔😎🤯😴🤩❤️🔥🌊🐱🐶🦄🍕🍔⚽️🎵"

    func generateEmojis() {
        emojiText = String((0..<4).compactMap { _ in emojiPool.randomElement() })
    }
}
