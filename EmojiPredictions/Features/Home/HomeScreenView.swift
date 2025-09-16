import SwiftUI

struct HomeScreenView: View {
    @StateObject private var viewModel = HomeScreenViewModel()
    
    var body: some View {
        VStack {
            VStack {
                Text(viewModel.emojiText)
                    .font(.system(size: 64))
                    .accessibilityIdentifier("emojiLabel")
                    .multilineTextAlignment(.center)
                    .padding()
                
                Button(action: {
                    viewModel.animateEmojiChange {
                        // Completion handler if needed
                    }
                }) {
                    Text("Generate Emojis")
                }
                .accessibilityIdentifier("generateButton")
                .padding()
            }
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
