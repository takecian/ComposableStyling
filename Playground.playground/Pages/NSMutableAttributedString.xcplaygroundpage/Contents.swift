//: [Previous](@previous)

import UIKit
import PlaygroundSupport
import ComposableStyling

let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 300))
let styleLabel = styleViewBackgroundColor(.white) <> styleLabelMultiline()
styleLabel(label)

let attributedString = NSMutableAttributedString(string: "hello\nhello\nhello")
let styleString = styleMutableAttributedStringLineSpacing(20) <>
    styleMutableAttributedStringFont(UIFont.systemFont(ofSize: 30)) <> styleMutableAttributedStringTextColor(.green) <>
    styleMutableAttributedStringAlignment(.center)
styleString(attributedString)

label.attributedText = attributedString

PlaygroundPage.current.liveView = label


//: [Next](@next)
