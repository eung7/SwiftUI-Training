//
//  SafariView.swift
//  AppleFramework-SwiftUI
//
//  Created by 김응철 on 2022/08/23.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
  let url : URL
  
  func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
    SFSafariViewController(url: url)
  }
  
  func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}
