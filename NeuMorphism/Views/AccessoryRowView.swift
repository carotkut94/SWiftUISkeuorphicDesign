//
//  AccessoryRowView.swift
//  NeuMorphism
//
//  Created by Death Code on 17/03/20.
//  Copyright © 2020 Death Code. All rights reserved.
//

import SwiftUI

struct AccessoryRowView: View {
  var items: [AccessoryView]
  
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack {
        ForEach(items, id: \.uuid) { accessory in
          accessory.padding(.horizontal, 30)
        }
      }
    }
  }
}

struct AccessoryRowView_Previews: PreviewProvider {
  static var previews: some View {
    AccessoryRowView(items: [
      AccessoryView(title: "Control Room", image: Image(systemName: "lightbulb")),
      AccessoryView(title: "Dungeon", image: Image(systemName: "lock.shield")),
      AccessoryView(title: "Laser", image: Image(systemName: "scope")),
      AccessoryView(title: "Periscope", image: Image(systemName: "eye"))
    ])
  }
}
