//
//  ContentView.swift
//  SwiftUI-SymbolRoller
//
//  Created by 김응철 on 2022/08/22.
//

import SwiftUI

struct SymbolRollerView: View {
  let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
  
  @State var imageName: String = "moon"
  
  var body: some View {
    VStack {
      Image(systemName: imageName)
        .renderingMode(.template)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .padding()
      
      Text(imageName)
        .font(.system(size: 40, weight: .bold, design: .default))
      
      Button {
        print("Button Tapped")
      } label: {
        HStack {
          Image(systemName: "arrow.3.trianglepath")
          
          VStack {
            Text("Reload")
            Text("Reload")
          }
        }
      }
      .frame(maxWidth: .infinity, minHeight: 80)
      .background(.pink)
      .cornerRadius(40)
    }
  }
}

struct SymbolRoller_Previews: PreviewProvider {
  static var previews: some View {
    SymbolRollerView()
  }
}
