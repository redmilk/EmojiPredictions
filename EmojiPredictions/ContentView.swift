//
//  ContentView.swift
//  EmojiPredictions
//
//  Created by Danyl Timofeyev on 14.09.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HomeScreenView().edgesIgnoringSafeArea(.all)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
