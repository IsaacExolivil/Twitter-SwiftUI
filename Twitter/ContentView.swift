//
//  ContentView.swift
//  Twitter
//
//  Created by Isaac on 13/01/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            MainTabView()
                .navigationBarHidden(showMenu)
            
            if showMenu {
                ZStack {
                    Color(.black)
                        .opacity(showMenu ? 0.25 : 0.0)
                }.onTapGesture {
                    withAnimation(.easeInOut) {
                        showMenu = false
                    }
                }
                .ignoresSafeArea()
            }
            
            
            SlideMenuView()
                .frame(width: 300.0)
                .offset(x: showMenu ? 0: -300, y: 0)
                .background(showMenu ? Color.white : Color.clear)
        }
        .navigationBarTitle("Inicio")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    withAnimation(.easeInOut){
                        showMenu.toggle()
                    }
                } label: {
                    Circle()
                        .frame(width: 32, height: 32)
                }
            }
        }
        .onAppear{
            showMenu = false
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
