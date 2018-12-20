//
//  UILabel.swift
//  ComposableStyling
//
//  Created by Fujiki Takeshi on 2018/12/20.
//  Copyright © 2018 takecian. All rights reserved.
//

import UIKit

public func styleLabelMultiline() -> (UILabel) -> Void {
    return {
        $0.numberOfLines = 0
    }
}

public func styleLabelTextAlignment(_ textAlignment: NSTextAlignment) -> (UILabel) -> Void {
    return {
        $0.textAlignment = textAlignment
    }
}

public func styleLabelFont(_ font: UIFont) -> (UILabel) -> Void {
    return {
        $0.font = font
    }
}

public func styleLabelTextColor(_ color: UIColor) -> (UILabel) -> Void {
    return {
        $0.textColor = color
    }
}
