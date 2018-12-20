//
//  UILabel.swift
//  ComposableStyling
//
//  Created by Fujiki Takeshi on 2018/12/20.
//  Copyright © 2018 takecian. All rights reserved.
//

import UIKit

public func styleViewMultiline() -> (UILabel) -> Void {
    return {
        $0.numberOfLines = 0
    }
}
