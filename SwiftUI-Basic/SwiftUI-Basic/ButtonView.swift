//
//  ButtonView.swift
//  SwiftUI-Basic
//
//  Created by 김응철 on 2022/08/22.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
      Button {
        print("button tapped")
      } label: {
        Text("Click Me")
      }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
