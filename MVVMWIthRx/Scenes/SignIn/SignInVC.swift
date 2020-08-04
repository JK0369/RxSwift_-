//
//  SignInVC.swift
//  MVVMWIthRx
//
//  Created by 김종권 on 2020/08/02.
//  Copyright © 2020 김종권. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

class SignInVC: UIViewController {

    // MARK: - Property

    @IBOutlet weak var btnSignIn: UIButton!
    @IBOutlet weak var lblTken: UILabel!
    @IBOutlet weak var btnNext: UIButton!
    var viewModel: SignInVM!
    lazy var router = SignInRouter(viewController: self)
    var disposeBag = DisposeBag()

    // MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupVM()
        setupInputBinding()
        setupOutputBinding()
    }

    // MARK: - Input Events

    func setupInputBinding() {
        btnSignInTapEvent()
        btnNextTapEvent()
    }

    // MARK: - Output binding

    func setupOutputBinding() {

        // asDriverOnErrorNever()는 asDriver()에서 error를 삭제한 것
        viewModel.success.asDriverOnErrorNever()
            .drive(onNext: { [weak self] token in
                self?.lblTken.text = token
            }).disposed(by: disposeBag)

        viewModel.nextScene.asDriverOnErrorNever()
            .drive(onNext: { [weak self] in
                self?.router.routeToResultSignIn()
            }).disposed(by: disposeBag)
    }

    // MARK: - Function

    private func setupVM() {
        let dependencies = SignInVM.Dependencies(signInUseCase: SignInUseCase())
        viewModel = SignInVM(dependencies: dependencies)
    }

    private func btnSignInTapEvent() {
        btnSignIn.rx.tap.asDriverOnErrorNever()
            .drive(onNext: { [weak self] in
                self?.viewModel.requestSignIn()
            }).disposed(by: disposeBag)
    }

    private func btnNextTapEvent() {
        btnNext.rx.tap.asDriverOnErrorNever()
            .drive(onNext: { [weak self] in
                self?.viewModel.routeToNextScene()
            }).disposed(by: disposeBag)
    }

}
