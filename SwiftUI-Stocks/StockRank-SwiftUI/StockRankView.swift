//
//  ContentView.swift
//  StockRank-SwiftUI
//
//  Created by joonwon lee on 2022/05/21.
//

import SwiftUI

struct StockRankView: View {
  @State var list = StockModel.list
  
  var body: some View {
    NavigationView {
      List($list) { $item in
        ZStack {
          NavigationLink {
            StockDetailView(stock: $item)
          } label: {
            EmptyView()
          }
          StockRankRow(stock: $item)
        }
        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        .frame(height: 80)
      }
      .listStyle(.plain)
      .navigationTitle("Stock Rank")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    StockRankView()
      .preferredColorScheme(.dark)
  }
}
