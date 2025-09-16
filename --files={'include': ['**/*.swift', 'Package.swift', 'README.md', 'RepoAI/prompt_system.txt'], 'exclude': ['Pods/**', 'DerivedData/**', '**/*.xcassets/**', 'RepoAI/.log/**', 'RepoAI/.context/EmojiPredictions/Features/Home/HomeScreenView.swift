import SwiftUI

struct HomeScreenView: View {
    @StateObject var viewModel = HomeScreenViewModel()

    var body: some View {
        VStack {
            Text(viewModel.emojiText)
                .font(.system(size: 64))
                .accessibilityIdentifier("emojiLabel")
                .padding()

            Button("Generate Emojis") {
                viewModel.generateEmojis()
            }
            .accessibilityIdentifier("generateButton")
            .padding()
        }
        .onAppear {
            viewModel.generateEmojis()
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
