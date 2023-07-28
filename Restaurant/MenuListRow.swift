//
//  MenuListRow.swift
//  Menu
//
//  Created by Jayanta Adhikary on 28/07/23.
//

import SwiftUI

struct MenuListRow: View {
    var item: MenuItem
    var body: some View {
        HStack{
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(15)
            Text(item.name)
                .bold()
            Spacer()
            Text("$" + item.price)
        }
        .listRowSeparator(.hidden)
    }
}

struct MenuListRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuListRow(item: MenuItem(name: "onigiri", price: "2.99", imageName: "onigiri"))
    }
}
