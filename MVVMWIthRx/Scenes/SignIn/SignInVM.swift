//
//  SignInVM.swift
//  MVVMWIthRx
//
//  Created by 김종권 on 2020/08/02.
//  Copyright © 2020 김종권. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa


class SignInVM {

    struct Dependencies {
        let signInUseCase: SignInUseCase
    }

    // MARK: - Properties

    let dependencies: Dependencies

    // MARK: - Output

    let success = PublishRelay<String>()
    let nextScene = PublishRelay<Void>()

    // MARK: - init

    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }

    // MARK: - Handling view input

    func requestSignIn() {
        let token = dependencies.signInUseCase.execute()
        if !token.isEmpty {
            success.accept(token)
        }
    }

    func routeToNextScene() {
        nextScene.accept(())
    }


}
