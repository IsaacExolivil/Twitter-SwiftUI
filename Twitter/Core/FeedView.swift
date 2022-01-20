//
//  FeedView.swift
//  Twitter
//
//  Created by Isaac on 13/01/22.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) { _ in
                        TweetsRowView()
                            .padding()
                        
                    }
                }
            }
            Button {
                showNewTweetView.toggle()
            } label: {
                Text("+")
                    .font(.system(.largeTitle))
                    .frame(width: 57, height: 50)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 7)
            }
            .background(Color.blue)
            .cornerRadius(38.5)
            .shadow(color: Color.black.opacity(0.3),
                    radius: 3,  x: 3, y: 3)
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView) {
                NewTweetView()
            }
         
            }
            
        }
    }


struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
