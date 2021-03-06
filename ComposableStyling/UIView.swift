//
//  UIView.swift
//  ComposableStyling
//
//  Created by Fujiki Takeshi on 2018/12/20.
//  Copyright © 2018 takecian. All rights reserved.
//

import UIKit

public func styleViewBackgroundColor(_ color: UIColor) -> (UIView) -> Void {
    return {
        $0.backgroundColor = color
    }
}

public func styleViewBorder(color: UIColor, width: CGFloat) -> (UIView) -> Void {
    return {
        $0.layer.borderColor = color.cgColor
        $0.layer.borderWidth = width
    }
}

public func styleViewCornerRadius(_ cornerRadius: CGFloat) -> (UIView) -> Void {
    return {
        $0.layer.cornerRadius = cornerRadius
        $0.layer.masksToBounds = true
    }
}

public func styleViewShadow(color: CGColor, opacity: Float, offset: CGSize, radius: CGFloat) -> (UIView) -> Void {
    return {
        $0.layer.shadowColor = color
        $0.layer.shadowRadius = radius
        $0.layer.shadowOffset = offset
        $0.layer.shadowOpacity = opacity
    }
}
