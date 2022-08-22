//
//  ImageView.swift
//  SwiftUI-Basic
//
//  Created by 김응철 on 2022/08/22.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image(systemName: "sun.max.fill")
        .renderingMode(.original)
        .resizable()
        .aspectRatio(contentMode: .fit)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
