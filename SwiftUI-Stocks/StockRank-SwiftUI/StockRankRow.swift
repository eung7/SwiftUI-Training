//
//  StockRankRow.swift
//  StockRank-SwiftUI
//
//  Created by 김응철 on 2022/08/22.
//

import SwiftUI

struct StockRankRow: View {
  var stock: StockModel
  
  var body: some View {
    HStack {
      Text("\(stock.rank)")
        .font(.system(size: 16, weight: .bold, design: .default))
        .frame(width: 30)
        .foregroundColor(.blue)
      Image(stock.imageName)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 40, height: 40)
      VStack(alignment: .leading, spacing: 5) {
        Text(stock.name)
          .foregroundColor(.white)
          .font(.system(size: 12))
        HStack {
          Text("\(stock.price) 원")
            .font(.system(size: 12))
            .foregroundColor(.gray)
          Text("\(stock.diff * 100, specifier: "%.2f")%")
            .font(.system(size: 12))
            .foregroundColor(stock.diff > 0 ? .red : .blue)
        }
      }
      Spacer()
      
      Image(systemName: "heart.fill")
        .resizable()
        .renderingMode(.template)
        .aspectRatio(contentMode: .fit)
        .frame(width: 30, height: 30)
        .foregroundColor(.gray)
    }
    .padding()
    .frame(maxWidth: .infinity)
    .background(.black)
  }
}

struct StockRankRow_Previews: PreviewProvider {
  static var previews: some View {
    StockRankRow(stock: StockModel.list[2])
  }
}
