//
//  ContentView.swift
//  NeuMorphism
//
//  Created by Death Code on 17/03/20.
//  Copyright © 2020 Death Code. All rights reserved.
//


//Entry point

import SwiftUI

enum SmartView {
  case lair
  case camera
  case automation
  case settings
}



struct ContentView: View {
    var body: some View {
        GeometryReader{ geometry in
            VStack(spacing: 0){
                ZStack{
                    LairView()
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
