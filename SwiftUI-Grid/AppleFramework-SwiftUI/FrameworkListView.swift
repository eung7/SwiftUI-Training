//
//  ContentView.swift
//  AppleFramework-SwiftUI
//
//  Created by joonwon lee on 2022/05/21.
//

import SwiftUI

struct FrameworkListView: View {
  @StateObject var viewModel = FrameworkListViewModel()
  
  let layout: [GridItem] = [
    GridItem(.flexible()),
    GridItem(.flexible()),
    GridItem(.flexible())
  ]
  
  var body: some View {
    NavigationView {
      ScrollView {
        LazyVGrid(columns: layout) {
          ForEach($viewModel.models, id: \.self) { $item in
            FrameworkCell(framework: $item)
              .onTapGesture {
                viewModel.isShowingDetail = true
                viewModel.selectedItem = item
              }
          }
        }
        .padding([.top, .leading, .trailing], 16.0)
      }
      .navigationTitle("☀️ Apple Framework")
    }
    .fullScreenCover(isPresented: $viewModel.isShowingDetail) {
      FrameworkDetailView(framework: $viewModel.selectedItem, isShowingDetail: $viewModel.isShowingDetail)
    }
  }
}

struct FrameworkListView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkListView()
      .preferredColorScheme(.dark)
  }
}
