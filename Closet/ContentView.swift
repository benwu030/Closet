//
//  ContentView.swift
//  Closet
//
//  Created by Ben Wu on 31/1/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var viewToBePresented = "HomeView"
//    @State private var viewToBePresented = HomeView()

    //TO-DO: store the view into the state variable??
    //Will the View initiate as a instance or recreate a newview when it is called?
    var body: some View {
        VStack {
            switch viewToBePresented {
            case "HomeView":
                HomeView()
            case "CameraView":
                CameraView()
            case "SettingsView":
                SettingsView()
            case "ClosetView":
                ClosetView()
            default:
                HomeView()

            }
            
            
        }.toolbar(content: mainToolBarContent)
    }
    
    @ToolbarContentBuilder
    func mainToolBarContent()-> some ToolbarContent{
        ToolbarItemGroup(placement: .bottomBar){
            
            Button(action: {
                viewToBePresented = "HomeView"
            }){
                VStack{
                    Image(systemName: "house.circle").font(.title2.weight(.light)).foregroundStyle(.toolbarItem)
                    Text("Home").font(.caption2.weight(.light)).foregroundStyle(.toolbarItem)
                }
                
            }
            Spacer()
            Button(action: {
                viewToBePresented = "CameraView"
            }){
                VStack{
                    Image(systemName: "camera.viewfinder").font(.title2.weight(.light)).foregroundStyle(.toolbarItem)
                    Text("Picture").font(.caption2.weight(.light)).foregroundStyle(.toolbarItem)
                }
            }
            Spacer()

            Button(action: {
                viewToBePresented = "ClosetView"
            }){
                VStack{
                    Image(systemName: "tshirt").font(.title2.weight(.light)).foregroundStyle(.toolbarItem)
                    Text("Closet").font(.caption2.weight(.light)).foregroundStyle(.toolbarItem)
                }
            }
            Spacer()

            Button(action: {
                viewToBePresented = "SettingsView"
            }){
                VStack{
                    Image(systemName: "line.3.horizontal.circle").font(.title2.weight(.light)).foregroundStyle(.toolbarItem)
                    Text("Settings").font(.caption2.weight(.light)).foregroundStyle(.toolbarItem)
                }
            }
                
            }
            
        }
        
}


#Preview {
    ContentView()
}
