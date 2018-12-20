//: [Previous](@previous)

import UIKit
import PlaygroundSupport
import ComposableStyling

let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 100))

let style = styleViewBackgroundColor(.white) <> styleViewCornerRadius(30) <>
    styleViewBorder(color: .blue, width: 3) <>
    styleLabelTextAlignment(.center) <>
    styleLabelFont(UIFont.boldSystemFont(ofSize: 60))

style(label)
label.text = "hello"

PlaygroundPage.current.liveView = label


//: [Next](@next)
