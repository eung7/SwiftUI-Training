//
//  ContentView.swift
//  SwiftUI-SymbolRoller
//
//  Created by 김응철 on 2022/08/22.
//

import SwiftUI

struct SymbolRollerView: View {
  let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
  
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct SymbolRoller_Previews: PreviewProvider {
    static var previews: some View {
        SymbolRollerView()
    }
}

