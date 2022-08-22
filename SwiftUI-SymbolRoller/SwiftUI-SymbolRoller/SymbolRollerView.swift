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
      Spacer()
      
      Image(systemName: imageName)
        .renderingMode(.template)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .padding()
      
      Spacer()
      
      Text(imageName)
        .font(.system(size: 40, weight: .bold, design: .default))
      
      Button {
        imageName = symbols.randomElement()!
      } label: {
        HStack {
          Image(systemName: "arrow.3.trianglepath")
          VStack {
            Text("Reload")
              .font(.system(size: 30, weight: .bold, design: .default))
            Text("click me to reload")
          }
        }
      }
      .foregroundColor(.white)
      .frame(maxWidth: .infinity, minHeight: 80)
      .background(.pink)
      .clipShape(Capsule())
    }
  }
}

struct SymbolRoller_Previews: PreviewProvider {
  static var previews: some View {
    SymbolRollerView()
  }
}
