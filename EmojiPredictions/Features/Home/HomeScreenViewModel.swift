import SwiftUI

@MainActor
class HomeScreenViewModel: ObservableObject {
    @Published var emojiText: String = ""
    
    private let emojiPool: [String] = ["😀", "😅", "🥳", "🤔", "😎", "🤯", "😴", "🤩", "❤️", "🔥", "🌊", "🐱", "🐶", "🦄", "🍕", "🍔", "⚽️", "🎵"]
    
    func generateEmojis() {
        emojiText = (0..<4).map { _ in emojiPool.randomElement()! }.joined()
    }
}
