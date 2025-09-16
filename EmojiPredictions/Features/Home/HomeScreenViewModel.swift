import SwiftUI

final class EmojiCatalog {
    static let allSingleScalars: [String] = {
        (0...0x10FFFF).compactMap { codePoint in
            guard let scalar = UnicodeScalar(codePoint),
                  scalar.properties.isEmoji,
                  scalar.properties.isEmojiPresentation || scalar.properties.isEmojiModifierBase else {
                return nil
            }
            return String(scalar)
        }
    }()
}

@MainActor
class HomeScreenViewModel: ObservableObject {
    @Published var emojiText: String = ""
    
    func generateEmojis() {
        let emojis = EmojiCatalog.allSingleScalars
        emojiText = emojis.isEmpty ? "" : (0..<4).compactMap { _ in emojis.randomElement() }.joined()
    }
}
