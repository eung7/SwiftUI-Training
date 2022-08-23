//
//  FrameworkDetailView.swift
//  AppleFramework-SwiftUI
//
//  Created by 김응철 on 2022/08/23.
//

import SwiftUI

struct FrameworkDetailView: View {
  @Binding var framework: AppleFramework?
//  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
  @Binding var isShowingDetail: Bool

  var body: some View {
    VStack {
      if let framework = framework {
        Image(framework.imageName)
        Text(framework.name)
        Text(framework.description)
      } else {
        Text("Nothing selected!")
      }
      
      Button {
        isShowingDetail = false
      } label: {
        Text("Button")
      }
    }
  }
}

struct FrameworkDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkDetailView(framework: .constant(AppleFramework.list[0]), isShowingDetail: .constant(true))
  }
}
