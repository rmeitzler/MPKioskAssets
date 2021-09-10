@available(iOS 13.0.0, *)
public struct MPKioskAssets {
    public private(set) var text = "Hello, World!"

    public init() {
    }
  
  public func kioskImage(_ name: String) -> Image {
    Image(name)
  }
}

import SwiftUI
@available(iOS 13.0, *)
public extension Image {
  init(packageResource name: String, ofType type: String) {
      
    guard let img = UIImage(named: name, in: Bundle.module, compatibleWith: nil) else {
            self.init(name)
            return
        }
    
        self.init(uiImage: img)
    }
  
//  init(kioskAsset name: String) {
//    return
//  }
}

public let kioskLogo = UIImage(named: "kiosk_logo", in: Bundle.module, compatibleWith: nil)
