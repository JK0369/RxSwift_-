//
//  ResultSignInVM.swift
//  MVVMWIthRx
//
//  Created by 김종권 on 2020/08/02.
//  Copyright © 2020 김종권. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

class ResultSignInVM {

    struct Dependencies {
        let getInfoUseCase: GetinfoUseCase
    }

    // MARK: - Properties
    let dependencies: Dependencies!

    // MARK: - Init

    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }

}
