import XCTest
@testable import EmojiPredictions

final class HomeScreenViewModelTests: XCTestCase {
    
    func testGenerates4EmojiGraphemes() {
        let viewModel = HomeScreenViewModel()
        viewModel.generateEmojis()
        XCTAssertEqual(viewModel.emojiText.count, 4, "Generated emoji text should be 4 graphemes long.")
    }
    
    func testAllCharsAreEmoji() {
        let viewModel = HomeScreenViewModel()
        viewModel.generateEmojis()
        for character in viewModel.emojiText {
            XCTAssertTrue(character.unicodeScalars.first?.properties.isEmoji == true, "Each character should be an emoji.")
        }
    }
    
    func testDifferentResultsUsually() {
        let viewModel = HomeScreenViewModel()
        viewModel.generateEmojis()
        let firstResult = viewModel.emojiText
        viewModel.generateEmojis()
        let secondResult = viewModel.emojiText
        XCTAssertNotEqual(firstResult, secondResult, "Consecutive generations should usually produce different results.")
    }
}
