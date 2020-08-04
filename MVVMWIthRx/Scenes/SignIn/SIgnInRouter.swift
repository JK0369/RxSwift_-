//
//  SIgnInRouter.swift
//  MVVMWIthRx
//
//  Created by 김종권 on 2020/08/02.
//  Copyright © 2020 김종권. All rights reserved.
//

import Foundation

protocol SignInRoutingLogics {
    func routeToResultSignIn()
}

class SignInRouter: BaseRouter, SignInRoutingLogics {

    func routeToResultSignIn() {

        let dependencies = ResultSignInVM.Dependencies(
            getInfoUseCase: GetinfoUseCase()
        )
        let vm = ResultSignInVM(dependencies: dependencies)
        let vc = ResultSignInVC.instantiate(viewModel: vm)
        vc.modalPresentationStyle = .fullScreen
        viewController?.present(vc, animated: true)
    }
}
