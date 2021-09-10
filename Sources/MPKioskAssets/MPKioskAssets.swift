@available(iOS 13.0.0, *)
public struct MPKioskAssets {
    public private(set) var text = "Hello, World!"

    public init() {
    }
  
}

import SwiftUI
@available(iOS 13.0, *)
public extension Image {
  init(kioskAsset name: String) {
      
    guard let img = UIImage(named: name, in: Bundle.module, compatibleWith: nil) else {
            self.init(name)
            return
        }
    
        self.init(uiImage: img)
    }
}
