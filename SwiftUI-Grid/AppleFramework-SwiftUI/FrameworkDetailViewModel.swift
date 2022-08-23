//
//  FrameworkDetailViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by 김응철 on 2022/08/23.
//

import Foundation
import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
  @Published var framework: AppleFramework
  
  init(framework: AppleFramework) {
    self.framework = framework
  }
}
