import XCTest
@testable import EmojiPredictions

final class HomeViewModelTests: XCTestCase {

    var viewModel: HomeViewModel!

    override func setUpWithError() throws {
        viewModel = HomeViewModel()
    }

    override func tearDownWithError() throws {
        viewModel = nil
    }

    func testInitialCounterValue() throws {
        XCTAssertEqual(viewModel.counter, 0, "Initial counter value should be 0")
    }

    func testIncrementCounter() throws {
        viewModel.incrementCounter()
        XCTAssertEqual(viewModel.counter, 1, "Counter should be 1 after one increment")
    }

    func testDecrementCounter() throws {
        viewModel.decrementCounter()
        XCTAssertEqual(viewModel.counter, -1, "Counter should be -1 after one decrement")
    }

    func testIncrementAndDecrementCounter() throws {
        viewModel.incrementCounter()
        viewModel.incrementCounter()
        viewModel.decrementCounter()
        XCTAssertEqual(viewModel.counter, 1, "Counter should be 1 after two increments and one decrement")
    }
}
