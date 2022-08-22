//
//  UserProfileSettings.swift
//  EnvironmentObjTest
//
//  Created by 김응철 on 2022/08/22.
//

import Foundation

final class UserProfileSettings: ObservableObject {
  @Published var name: String = ""
  @Published var age: Int = 0
  
  func haveBirthDayParty() {
    age += 1
  }
}
