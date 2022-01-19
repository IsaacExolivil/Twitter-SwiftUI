//
//  TweetsRowView.swift
//  Twitter
//
//  Created by Isaac on 13/01/22.
//

import SwiftUI

struct TweetsRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            //profile image
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                
                VStack(alignment: .leading, spacing: 4) {
                    //user info
                    HStack {
                        Text("Isaac Lopez")
                            .font(.subheadline).bold()
                        Text("@Isaac_lopez18")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("49 min")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    // tweet info
                    Text("Hola yo soy isaac")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            HStack {
                //1
                Button {
                    //acciones del boton
                } label: {
                    Image(systemName: "bubble.left")
                            .font(.subheadline)
                }
                Spacer()
                //2
                Button {
                    //acciones del boton
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                            .font(.subheadline)
                }
                Spacer()
                
                //3
                Button {
                    //acciones del boton
                } label: {
                    Image(systemName: "heart")
                            .font(.subheadline)
                }
                Spacer()
                
                //4
                Button {
                    //acciones del boton
                } label: {
                    Image(systemName: "bookmark")
                            .font(.subheadline)
                }
               
                          
            }
            .padding()
            .foregroundColor(.gray)
            Divider()
        }
        
    }
}

struct TweetsRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetsRowView()
    }
}
