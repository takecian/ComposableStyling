//
//  NSMutableAttributedString.swift
//  ComposableStyling
//
//  Created by TAKESHI FUJIKI on 2018/12/24.
//  Copyright © 2018 takecian. All rights reserved.
//

import UIKit

public func styleNSMutableAttributedStringFont(_ font: UIFont) -> (NSMutableAttributedString) -> Void {
    return {
        $0.addAttribute(NSAttributedString.Key.font, value: font, range: NSRange(location: 0, length: $0.length))
    }
}

public func styleNSMutableAttributedStringTextColor(_ color: UIColor) -> (NSMutableAttributedString) -> Void {
    return {
        $0.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: NSRange(location: 0, length: $0.length))
    }
}

public func styleNSMutableAttributedStringBackgroundColor(_ color: UIColor) -> (NSMutableAttributedString) -> Void {
    return {
        $0.addAttribute(NSAttributedString.Key.backgroundColor, value: color, range: NSRange(location: 0, length: $0.length))
    }
}

public func styleNSMutableAttributedStringLineSpacing(_ lineSpacing: CGFloat) -> (NSMutableAttributedString) -> Void {
    return {
        let style = $0.attribute(.paragraphStyle, at: 0, longestEffectiveRange: nil, in: NSRange(location: 0, length: $0.length)) as? NSMutableParagraphStyle ?? NSMutableParagraphStyle()
        style.lineSpacing = lineSpacing
        $0.addAttribute(NSAttributedString.Key.paragraphStyle, value: style, range: NSRange(location: 0, length: $0.length))
    }
}

public func styleNSMutableAttributedStringAlignment(_ alignment: NSTextAlignment) -> (NSMutableAttributedString) -> Void {
    return {
        let style = $0.attribute(.paragraphStyle, at: 0, longestEffectiveRange: nil, in: NSRange(location: 0, length: $0.length)) as? NSMutableParagraphStyle ?? NSMutableParagraphStyle()
        style.alignment = alignment
        $0.addAttribute(NSAttributedString.Key.paragraphStyle, value: style, range: NSRange(location: 0, length: $0.length))
    }
}
