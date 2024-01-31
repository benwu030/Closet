//
//  UIComponents.swift
//  Closet
//
//  Created by Ben Wu on 31/1/2024.
//

import SwiftUI

struct SquareCell : View{
     var color: Color
     var width: CGFloat
     var height: CGFloat
    var text:String = ""
    var cornerRaidus:CGFloat
    
    init(color: Color, width: CGFloat, height: CGFloat, text: String = "", cornerRaidus: CGFloat) {
        self.color = color
        self.width = width
        self.height = height
        self.text = text
        self.cornerRaidus = cornerRaidus
    }
    
    var body: some View{
        Image(systemName: "house") .frame(width: width, height: height).foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: cornerRaidus).foregroundColor(color))
            .overlay(alignment: .bottom){
            Text(text).isHidden(text=="" ? true:false, remove: text=="" ? true:false).foregroundColor(.white).padding([.bottom],10)
            }
    }
  
    
}

extension View {
    /// Hide or show the view based on a boolean value.
    ///
    /// Example for visibility:
    ///
    ///     Text("Label")
    ///         .isHidden(true)
    ///
    /// Example for complete removal:
    ///
    ///     Text("Label")
    ///         .isHidden(true, remove: true)
    ///
    /// - Parameters:
    ///   - hidden: Set to `false` to show the view. Set to `true` to hide the view.
    ///   - remove: Boolean value indicating whether or not to remove the view.
    @ViewBuilder func isHidden(_ hidden: Bool, remove: Bool = false) -> some View {
        if hidden {
            if !remove {
                self.hidden()
            }
        } else {
            self
        }
    }
}

