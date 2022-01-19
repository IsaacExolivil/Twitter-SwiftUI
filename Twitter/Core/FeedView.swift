//
//  FeedView.swift
//  Twitter
//
//  Created by Isaac on 13/01/22.
//

import SwiftUI

struct FeedView: View {
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
                print("Muestra nuevos tweets")
            } label: {
                Image("tweets")
                    .resizable()
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
