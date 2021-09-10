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


@available(iOS 15.0, *)
public extension Color {
  init(kioskAsset name: String) {
      
    guard let color = UIColor(named: name, in: Bundle.module, compatibleWith: nil) else {
            self.init(name)
            return
        }
    
        self.init(uiColor: color)
    }
}
