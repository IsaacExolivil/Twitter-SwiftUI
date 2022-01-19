//
//  SlideMenuRowView.swift
//  Twitter
//
//  Created by Isaac on 18/01/22.
//

import SwiftUI

struct SlideMenuRowView: View {
    let viewModel: SideMenuViewModel
    
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.descripcion)
                .font(.subheadline)
                .foregroundColor(.black)
            
            Spacer()
            
        }
        .frame( height: 40)
        .padding(.horizontal)
    }
}

struct SlideMenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenuRowView(viewModel: .perfil)
    }
}
