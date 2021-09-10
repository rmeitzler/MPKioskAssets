//
//  File.swift
//  File
//
//  Created by Richard Meitzler on 9/9/21.
//

import Foundation

public enum KioskLayoutStyle {
  case square
  case wide
}

public struct KioskConfig {
  public var allowLoyalty: Bool = false
  public var layoutStyle: KioskLayoutStyle = .wide
  
  public init() {
    
  }
}
