//
//  File.swift
//  File
//
//  Created by Richard Meitzler on 9/9/21.
//

import Foundation

enum KioskLayoutStyle {
  case square
  case wide
}

struct KioskConfig {
  var allowLoyalty: Bool = true
  var layoutStyle: KioskLayoutStyle = .wide
}
