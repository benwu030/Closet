//
//  HomeView.swift
//  Closet
//
//  Created by Ben Wu on 31/1/2024.
//

import SwiftUI


struct HomeView: View {
    private var VgridItemLayout = [GridItem(.adaptive(minimum: 200)),GridItem(.adaptive(minimum: 200))]
    private var HgridItemLayout = [GridItem(.flexible())]
    private var squareCellsColor:[Color] = [.black]
    
    var body: some View {
        VStack{
            Text("This is the home page")
            VStack{
                ScrollView{
                    ScrollView(.horizontal){
                    LazyHGrid(rows: HgridItemLayout){
                        ForEach((0...10), id: \.self){
                            SquareCell(color: squareCellsColor[$0 % squareCellsColor.count], width: 400,height: 600,cornerRaidus: 50)
                        }
                    }
                }.fixedSize(horizontal: false, vertical: true)
                
                    LazyVGrid(columns: VgridItemLayout,spacing: 10){
                        ForEach((0...10), id: \.self){
                            SquareCell(color: squareCellsColor[$0 % squareCellsColor.count], width: 200,height: 200,cornerRaidus: 50)
                        }
                        
                    }
                    
                    
                }
            }
        }
        
        
        
    }
}
