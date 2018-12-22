import UIKit
import PlaygroundSupport
import ComposableStyling

let hostView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
hostView.backgroundColor = .white

let view1 = UIView(frame: CGRect(x: 50, y: 10, width: 200, height: 100))

let style1 = styleViewBackgroundColor(.red) <> styleViewCornerRadius(30) <>
    styleViewBorder(color: .blue, width: 10) <> styleViewShadow(color: UIColor.red.cgColor, opacity: 1, offset: CGSize(width: 10, height: 10), radius: 10)

style1(view1)
hostView.addSubview(view1)

let view2 = UIView(frame: CGRect(x: 50, y: 130, width: 200, height: 100))

let style2 = styleViewBackgroundColor(.red) <>     styleViewShadow(color: UIColor.red.cgColor, opacity: 1, offset: CGSize(width: 10, height: 10), radius: 10)

style2(view2)
hostView.addSubview(view2)

PlaygroundPage.current.liveView = hostView
