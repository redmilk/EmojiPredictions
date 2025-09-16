import XCTest
@testable import EmojiPredictions

final class HomeScreenViewModelTests: XCTestCase {
    
    func testGenerateEmojisProduces4Characters() {
        let viewModel = HomeScreenViewModel()
        viewModel.generateEmojis()
        XCTAssertEqual(viewModel.emojiText.count, 4, "Generated emoji text should be 4 characters long.")
    }
    
    func testConsecutiveGenerationsProduceDifferentResults() {
        let viewModel = HomeScreenViewModel()
        viewModel.generateEmojis()
        let firstResult = viewModel.emojiText
        viewModel.generateEmojis()
        let secondResult = viewModel.emojiText
        XCTAssertNotEqual(firstResult, secondResult, "Consecutive generations should usually produce different results.")
    }
    
    func testGeneratedEmojisAreFromAllowedPool() {
        let viewModel = HomeScreenViewModel()
        viewModel.generateEmojis()
        let allowedPool: Set<Character> = Set(["😀", "😅", "🥳", "🤔", "😎", "🤯", "😴", "🤩", "❤️", "🔥", "🌊", "🐱", "🐶", "🦄", "🍕", "🍔", "⚽️", "🎵"])
        for character in viewModel.emojiText {
            XCTAssertTrue(allowedPool.contains(character), "Generated emoji should be from the allowed pool.")
        }
    }
}
