//
//  UIButton.swift
//  ComposableStyling
//
//  Created by Fujiki Takeshi on 2018/12/20.
//  Copyright © 2018 takecian. All rights reserved.
//

import UIKit

public func styleButtonFont(_ font: UIFont) -> (UIButton) -> Void {
    return {
        $0.titleLabel?.font = font
    }
}

public func styleButtonTextColor(_ color: UIColor) -> (UIButton) -> Void {
    return {
        $0.setTitleColor(color, for: .normal)
    }
}
