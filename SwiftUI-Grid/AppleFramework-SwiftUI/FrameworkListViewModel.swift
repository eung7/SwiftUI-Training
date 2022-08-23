//
//  FrameworkListViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by 김응철 on 2022/08/23.
//

import Foundation

final class FrameworkListViewModel: ObservableObject {
  @Published var models: [AppleFramework] = AppleFramework.list
  @Published var isShowingDetail: Bool = false
}
