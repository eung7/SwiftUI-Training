//
//  FrameworkDetailView.swift
//  AppleFramework-SwiftUI
//
//  Created by 김응철 on 2022/08/23.
//

import SwiftUI

struct FrameworkDetailView: View {
  @Binding var framework: AppleFramework
  
  var body: some View {
    VStack {
      Image(framework.imageName)
      Text(framework.name)
      Text(framework.description)
      
      Button {
        print("--> Tapped!")
      } label: {
        Text("Button")
      }

    }
  }
}

struct FrameworkDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkDetailView(framework: .constant(AppleFramework.list[0]))
  }
}
