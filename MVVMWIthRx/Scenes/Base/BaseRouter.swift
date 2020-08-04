//
//  BaseRouter.swift
//  MVVMWIthRx
//
//  Created by 김종권 on 2020/08/02.
//  Copyright © 2020 김종권. All rights reserved.
//

import Foundation
import UIKit

class BaseRouter {
    weak var viewController: UIViewController?

    init(viewController: UIViewController) {
        self.viewController = viewController
    }

    deinit {
        print("deinit: \(self)")
    }
}
