//
//  AccessoryView.swift
//  NeuMorphism
//
//  Created by Death Code on 17/03/20.
//  Copyright © 2020 Death Code. All rights reserved.
//

import SwiftUI

struct AccessoryView: View {
  let uuid = UUID()
  var title: String
  var image: Image
  
  var body: some View {
    VStack {
      image.resizable().scaledToFit()
        .frame(width: 150, height: 236)
        .padding(40)
        .font(.system(size: 150, weight: .thin))
      
      HStack {
        Text(title)
          .bold()
          .padding(.leading)
          .padding(.bottom)
        Spacer()
      }
    }
    .frame(width: 230)
    .border(Color.gray, width: 1)
  }
}

struct AccessoryView_Previews: PreviewProvider {
  static var previews: some View {
    AccessoryView(title: "Control Room", image: Image(systemName: "lock.shield"))
  }
}
