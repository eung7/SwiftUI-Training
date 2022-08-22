//
//  SecondView.swift
//  EnvironmentObjTest
//
//  Created by 김응철 on 2022/08/22.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
      NavigationView {
        VStack(spacing: 30) {
          NavigationLink {
            ThirdView()
          } label: {
            Text("Third View")
          }
        }
        .navigationTitle("Second View")
      }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
