//
//  ClosetView.swift
//  Closet
//
//  Created by Ben Wu on 31/1/2024.
//

import SwiftUI
let categories = ["Shirt","Jacket","Shoes","Jeans"]
struct ClosetView: View {
    
    @State private var searchText = ""
    private var VgridItemLayout = [GridItem(.adaptive(minimum: 200)),GridItem(.adaptive(minimum: 200))]

    var body: some View {

        NavigationStack{
            ScrollView{
                VStack{
    //                Text("This is the closet page")
    //                Text("You are searching for \(searchText)")
                    LazyVGrid(columns: VgridItemLayout,spacing: 10){
                        ForEach((0...4), id: \.self){
                            SquareCell(color:.black, width: 200,height: 200,text: categories[$0 % categories.count],cornerRaidus: 50)
                        }
                        
                    }
                }
            }
            
        }.searchable(text: $searchText,placement: .navigationBarDrawer,prompt: "Search for your clothes")
        
    }
}

