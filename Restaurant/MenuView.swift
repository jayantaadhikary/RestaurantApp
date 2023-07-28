//
//  MenuView.swift
//  Restaurant
//
//  Created by Jayanta Adhikary on 28/07/23.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems: [MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        VStack(alignment:.leading){
            Text("Menu")
                .font(.largeTitle)
                .bold()
                .padding(.horizontal)
            List(menuItems){ item in
                MenuListRow(item: item)
            }
            .listStyle(.plain)
            .onAppear {
                // Call for the data
                menuItems = dataService.getData()
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

