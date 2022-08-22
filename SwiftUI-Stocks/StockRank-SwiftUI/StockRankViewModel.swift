//
//  StockRankViewModel.swift
//  StockRank-SwiftUI
//
//  Created by 김응철 on 2022/08/22.
//

import Foundation

final class StockRankViewModel: ObservableObject {
  @Published var models: [StockModel] = StockModel.list
  
  var numOfFavorites: Int {
    return models.filter { $0.isFavorite }.count
  }
}
