//
//  TextView.swift
//  SwiftUI-Basic
//
//  Created by 김응철 on 2022/08/22.
//

import SwiftUI

struct TextView: View {
  var body: some View {
    HStack {
      Text("SwiftUI")
        .font(.system(size: 40, weight: .bold, design: .default))
    }
  }
}

struct TextView_Previews: PreviewProvider {
  static var previews: some View {
    TextView()
  }
}
