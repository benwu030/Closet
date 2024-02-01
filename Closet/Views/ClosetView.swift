//
//  ClosetView.swift
//  Closet
//
//  Created by Ben Wu on 31/1/2024.
//

import SwiftUI
struct ClosetView: View {
    
    private var VgridItemLayout = [GridItem(.adaptive(minimum: 200)),GridItem(.adaptive(minimum: 200))]
    @State private var viewModel = ViewModel()
    var body: some View {

        NavigationStack{
            ScrollView{
                VStack{
    //                Text("This is the closet page")
    //                Text("You are searching for \(searchText)")
                    LazyVGrid(columns: VgridItemLayout,spacing: 10){
                        ForEach((0...4), id: \.self){
                            SquareCell(color:.black, width: 200,height: 200,text: viewModel.categories[$0 % viewModel.categories.count],cornerRaidus: 50)
                        }
                        
                    }
                }
            }
            
        }.searchable(text: $viewModel.searchText,placement: .navigationBarDrawer,prompt: "Search for your clothes")
        
    }
}

