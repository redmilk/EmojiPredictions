import Foundation

class HomeViewModel: ObservableObject {
    @Published var counter: Int = 0

    func incrementCounter() {
        counter += 1
    }

    func decrementCounter() {
        counter -= 1
    }
}
