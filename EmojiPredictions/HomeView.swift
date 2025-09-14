import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel

    var body: some View {
        VStack {
            Text("Counter: \(viewModel.counter)")
            HStack {
                Button(action: {
                    viewModel.incrementCounter()
                }) {
                    Text("Increment")
                }
                Button(action: {
                    viewModel.decrementCounter()
                }) {
                    Text("Decrement")
                }
            }
        }
        .padding()
    }
}
