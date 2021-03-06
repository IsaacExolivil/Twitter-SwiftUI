//
//  ProfileView.swift
//  Twitter
//
//  Created by Isaac on 14/01/22.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Environment(\.presentationMode) var mode
    @Namespace var animation
    
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            
            accionesButtons
            
            userInfoDetails
            
            filtroTweets
            
            tweetsView
            

            
            Spacer()
            
            
         
          
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

// MARK: - Vista de usuario
extension ProfileView {
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack{
                Button {
                    mode.wrappedValue.dismiss()
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                        .offset(x: 16, y: 12)
                }
            
            
            Circle()
                .frame(width: 72, height: 72)
                .offset(x: 16, y: 24)
        }
    }
      
        .frame(height: 99)
        
    }
    // MARK: - Acciones de botones.
    var accionesButtons: some View {
        HStack( spacing: 25 ) {
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            Button {
                
            } label: {
                Text("Edit profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 0.75))
                
                
            }
            
        }
        .padding(.trailing)
        
    }
    // MARK: - Informaci??n del usuario.
    var userInfoDetails: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("Isaac Lopez")
                    .font(.title2).bold()
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
                
            }
            Text("@joker")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Hola soy isaac es mi biograf??a esta ")
                .font(.subheadline)
                .padding(.vertical)
            
            HStack( spacing: 24) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Me gusta jugar ")
                    
                }
                HStack {
                    Image(systemName: "link")
                    Text("www.joker.com")
                   
                    
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            
           UserStatsView()
            .padding(.vertical)
        }
        .padding(.horizontal)
      
       
    }
    // MARK: - Filtro de tweets.
    var filtroTweets : some View {
        HStack {
            ForEach(TweetFilterViewModel.allCases, id: \.rawValue) {
                item in VStack {
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? .black : .gray)
                    
                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    } else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height: 3)
                            
                    }
                    
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectedFilter = item
                    }
                }
               
            }
        }
        .overlay(Divider().offset(x: 0, y: 16))
    }
    // MARK: - Vista de tweets.
    var tweetsView : some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 10, id: \.self) { _ in
                    TweetsRowView()
                        .padding()
                }
            }
        }
    }
}
