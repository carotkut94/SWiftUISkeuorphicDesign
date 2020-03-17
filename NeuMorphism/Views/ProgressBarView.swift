//
//  ProgressBarView.swift
//  NeuMorphism
//
//  Created by Death Code on 17/03/20.
//  Copyright © 2020 Death Code. All rights reserved.
//

import SwiftUI

struct ProgressBarView: View {
    var title:String
    @Binding var percent:Double
    
    var body: some View {
        GeometryReader{geometry in
            VStack{
                HStack{
                    Text(self.title)
                    Spacer()
                    Text("\(Int(self.percent * 100))%")
                }
                ZStack(alignment: .leading){
                    Capsule().frame(height:10).foregroundColor(Color(white: 0.8))
                    Capsule().frame( width: (geometry.size.width - 32) * CGFloat(self.percent),height:10).foregroundColor(.blue)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView(title: "Laser Change", percent: .constant(0.42))
    }
}
