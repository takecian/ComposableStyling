import UIKit
import PlaygroundSupport
import ComposableStyling

let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))

let style = styleViewBackgroundColor(.red) <> styleViewCornerRadius(30) <>
    styleViewBorder(color: .blue, width: 10)

style(view)

PlaygroundPage.current.liveView = view
