//
//  TabBarItemView.swift
//  NeuMorphism
//
//  Created by Death Code on 17/03/20.
//  Copyright © 2020 Death Code. All rights reserved.
//

import SwiftUI

struct TabBarItemView: View {
  @Binding var selectedItem: SmartView
  
  let uuid = UUID()
  var smartView: SmartView
  var icon: String
  
  var body: some View {
    Button(action: {
      self.selectedItem = self.smartView
    }) {
      Image(systemName: self.icon)
        .resizable()
        .scaledToFit()
        .accentColor(self.selectedItem == self.smartView ? .blue : .gray)
        .frame(width: 16, height: 16)
    }
  }
}

struct TabBarItemView_Previews: PreviewProvider {
  static var previews: some View {
    TabBarItemView(selectedItem: .constant(SmartView.camera), smartView: .lair, icon: "pencil.tip")
  }
}
