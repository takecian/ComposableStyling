//: [Previous](@previous)

import UIKit
import PlaygroundSupport
import ComposableStyling

let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 300))
let styleLabel = styleViewBackgroundColor(.white) <> styleLabelMultiline()
styleLabel(label)

let attributedString = NSMutableAttributedString(string: "hello\nhello\nhello")
let styleString = styleNSMutableAttributedStringLineSpacing(20) <>
    styleNSMutableAttributedStringFont(UIFont.systemFont(ofSize: 30)) <> styleNSMutableAttributedStringTextColor(.green) <>
    styleNSMutableAttributedStringAlignment(.center)
styleString(attributedString)

label.attributedText = attributedString

PlaygroundPage.current.liveView = label


//: [Next](@next)
