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
        XCTAssertNotEqual(firstResult, secondResult, "Consecutive generations should produce different results most of the time.")
    }

    func testGeneratedEmojisAreFromAllowedPool() {
        let viewModel = HomeScreenViewModel()
        viewModel.generateEmojis()
        let emojiPool = "😀😅🥳🤔😎🤯😴🤩❤️🔥🌊🐱🐶🦄🍕🍔⚽️🎵"
        for emoji in viewModel.emojiText {
            XCTAssertTrue(emojiPool.contains(emoji), "Generated emoji should be from the allowed pool.")
        }
    }
}
