import Foundation
import UIKit

extension UIView {
    func addBackgroundGradientLayer(_ view: UIView, subView: UIView, colorTop: UIColor, colorBottom: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.frame

        let colorTopValue: AnyObject = colorTop.cgColor
        let colorBottomValue: AnyObject = colorBottom.cgColor
        gradientLayer.colors = [colorTopValue, colorBottomValue]
        gradientLayer.locations = [0.0, 1.0]

        subView.layer.insertSublayer(gradientLayer, at: 0)
    }

    public func insertBlurView (_ view: UIView, style: UIBlurEffectStyle) -> UIVisualEffectView {
        view.backgroundColor = UIColor.clear

        let blurEffect = UIBlurEffect(style: style)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        view.insertSubview(blurEffectView, at: 1)
        return blurEffectView
    }

    func applyCornerRadius(_ view: UIView, cornerRadius: CGFloat, borderColor: UIColor) -> UIView {
        view.layer.cornerRadius = cornerRadius
        view.clipsToBounds = true
        view.layer.borderWidth = 1.0
        view.layer.borderColor = borderColor.cgColor
        return view
    }
}
