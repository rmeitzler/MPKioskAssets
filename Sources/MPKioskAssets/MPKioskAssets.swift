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
      
      guard let path = Bundle.module.path(forResource: name, ofType: type),
        let image = UIImage(contentsOfFile: path) else {
            self.init(name)
            return
        }
    
        self.init(uiImage: image)
    }
  
//  init(kioskAsset name: String) {
//    return
//  }
}
