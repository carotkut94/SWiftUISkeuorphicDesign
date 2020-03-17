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
  @State var selectedItem = SmartView.lair
  
  var body: some View {
    GeometryReader { geometry in
      VStack(spacing: 0) {
        ZStack {
            LairView()
        }
        
        Rectangle()
          .frame(height: 1.0 / UIScreen.main.scale)
          .foregroundColor(Color(white: 0.698))
        
        TabBarView(
          selectedItem: self.$selectedItem,
          tabBarItems: [
            TabBarItemView(
              selectedItem: self.$selectedItem,
              smartView: .lair, icon: "pencil.tip"),
            TabBarItemView(
              selectedItem: self.$selectedItem,
              smartView: .camera, icon: "video.circle"),
            TabBarItemView(
              selectedItem: self.$selectedItem,
              smartView: .automation, icon: "alarm"),
            TabBarItemView(
              selectedItem: self.$selectedItem,
              smartView: .settings, icon: "gear")
        ])
          .padding(.bottom, geometry.safeAreaInsets.bottom)
          .background(Color(white: 0.96875))
      }
      .edgesIgnoringSafeArea(.bottom)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
