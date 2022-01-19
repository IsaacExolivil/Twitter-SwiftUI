//
//  UserStatsView.swift
//  Twitter
//
//  Created by Isaac on 18/01/22.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack( spacing: 24) {
            
            HStack(spacing: 4) {
                Text("8").bold()
                    .font(.subheadline)
                    .bold()
                
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            HStack(spacing: 4) {
                Text("80.5M").bold()
                    .font(.subheadline)
                    .bold()
                
                
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
