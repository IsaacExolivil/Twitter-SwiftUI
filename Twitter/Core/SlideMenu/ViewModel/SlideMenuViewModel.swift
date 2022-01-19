//
//  SlideMenuViewModel.swift
//  Twitter
//
//  Created by Isaac on 18/01/22.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case perfil
    case lista
    case favoritos
    case cerrar
    
    var descripcion: String {
        switch self {
        case .perfil: return "perfil"
        case .lista: return  "lista"
        case .favoritos: return "favoritos"
        case .cerrar: return "Cerrar sesión"
        }
    }
    var imageName: String {
        switch self {
        case .perfil: return "person"
        case .lista: return  "list.bullet"
        case .favoritos: return "bookmark"
        case .cerrar: return "arrow.left.square"
        }
    }
}
