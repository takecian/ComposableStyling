//: [Previous](@previous)

import UIKit
import PlaygroundSupport
import ComposableStyling

let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 100))

let style = styleViewBackgroundColor(.purple) <> styleViewCornerRadius(30) <>
    styleViewBorder(color: .blue, width: 3) <>
    styleButtonTextColor(.white) <>
    styleButtonFont(UIFont.boldSystemFont(ofSize: 100))

style(button)
button.setTitle("hi", for: .normal)

PlaygroundPage.current.liveView = button

//: [Next](@next)
