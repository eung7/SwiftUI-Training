//
//  ContentView.swift
//  SwiftUI-Basic
//
//  Created by 김응철 on 2022/08/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 30) {
      VStack {
        ImageView()
        ButtonView()
        TextView()
        Spacer()
      }
      
      HStack {
        ImageView()
        ButtonView()
        TextView()
        
        Spacer()
      }
      
      ZStack {
        ImageView()
        ButtonView()
        TextView()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
