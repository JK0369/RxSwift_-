//
//  NSObejct.swift
//  MVVMWIthRx
//
//  Created by 김종권 on 2020/08/02.
//  Copyright © 2020 김종권. All rights reserved.
//

import Foundation

public extension NSObject {
    var className: String {
        return String(describing: type(of: self))
    }

    class var className: String {
        return String(describing: self)
    }
}
