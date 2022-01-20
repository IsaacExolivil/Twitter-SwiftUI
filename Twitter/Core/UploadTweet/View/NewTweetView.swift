//
//  NewTweetView.swift
//  Twitter
//
//  Created by Isaac on 19/01/22.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancelar")
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .foregroundColor(Color.white)
                        .background(Color.red)
                        .clipShape(Capsule())
                }
                Spacer()
                
                Button {
                    print("cancelar")
                } label: {
                    Text("Tweet")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        
                
                }
        }
            .padding()
           
            HStack(alignment: .top) {
                Circle()
                    .frame(width: 64, height: 64)
                TextArea("Que esta pasando?", text: $caption)
            }
            .padding()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
