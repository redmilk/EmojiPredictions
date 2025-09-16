import SwiftUI

struct HomeScreenView: View {
    @StateObject private var viewModel = HomeScreenViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.emojiText)
                .font(.system(size: 64))
                .accessibilityIdentifier("emojiLabel")
                .multilineTextAlignment(.center)
                .padding()
            
            Button(action: {
                viewModel.generateEmojis()
            }) {
                Text("Generate Emojis")
            }
            .accessibilityIdentifier("generateButton")
            .padding()
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
