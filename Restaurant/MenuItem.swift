//
//  MenuItem.swift
//  Menu
//
//  Created by Jayanta Adhikary on 28/07/23.
//

import Foundation

struct MenuItem: Identifiable {
    var name: String
    var price: String
    var imageName: String
    var id: UUID = UUID()
}
