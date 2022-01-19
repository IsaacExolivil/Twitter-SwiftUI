//
//  SlideMenuView.swift
//  Twitter
//
//  Created by Isaac on 18/01/22.
//

import SwiftUI

struct SlideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                VStack(alignment: .leading, spacing: 4) {
                    Text("Isaac Lopez")
                        .font(.headline)
                    
                    Text("@Isaac")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                UserStatsView()
                    .overlay(Divider().offset(x: 0, y: 36))
                    .padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { viewModel in
                if viewModel == .perfil {
                    NavigationLink {
                        ProfileView()
                    } label : {
                        SlideMenuRowView(viewModel: viewModel)
                    }
                } else if viewModel == .cerrar {
                    Button {
                        print("Cerraste sesión guapo")
                              
                              } label: {
                            SlideMenuRowView(viewModel: viewModel)
                        }
                    
                } else {
                    SlideMenuRowView(viewModel: viewModel)
                    
                }
                
            }
            
            Spacer()
        }
    }
}

struct SlideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenuView()
    }
}
