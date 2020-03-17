//
//  LairView.swift
//  NeuMorphism
//
//  Created by Death Code on 17/03/20.
//  Copyright © 2020 Death Code. All rights reserved.
//

import SwiftUI

struct LairView: View {
    
    var profileView: some View {
      Image(systemName: "person.crop.circle")
        .imageScale(.large)
        .padding()
    }
    
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                AccessoryRowView(items: [
                    AccessoryView(
                      title: "Control Room Lights",
                      image: Image(systemName: "lightbulb")),
                    AccessoryView(
                      title: "Dungeon",
                      image: Image(systemName: "lock.shield")),
                    AccessoryView(
                      title: "Death Ray",
                      image: Image(systemName: "scope")),
                    AccessoryView(
                      title: "Periscope",
                      image: Image(systemName: "eye")),
                    AccessoryView(
                      title: "Evil Music",
                      image: Image(systemName: "music.house"))
                ])
            }
        }
    }
}

struct LairView_Previews: PreviewProvider {
    static var previews: some View {
        LairView()
    }
}
