//
//  ObservableType.swift
//  MVVMWIthRx
//
//  Created by 김종권 on 2020/08/02.
//  Copyright © 2020 김종권. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

extension ObservableType {
    func asDriverOnErrorNever() -> Driver<Element> {
        return asDriver { error in
            return .never()
        }
    }
}
