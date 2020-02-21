import UIKit
import CoreImage.CIFilterBuiltins

let image = UIImage(named: "landscape.jpg")!

extension UIImage {
    
    func blur(radius: Float) -> UIImage? {
        let image = CIImage(image: self)
        let blurFilter = CIFilter.gaussianBlur()
        blurFilter.inputImage = image
        blurFilter.radius = radius
        guard let ciImage = blurFilter.outputImage else { return nil }
        return UIImage(ciImage: ciImage)
    }
    
}

image.blur(radius: 5.0)
