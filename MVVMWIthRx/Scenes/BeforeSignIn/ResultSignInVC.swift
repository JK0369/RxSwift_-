//
//  ResultSignInVC.swift
//  MVVMWIthRx
//
//  Created by 김종권 on 2020/08/02.
//  Copyright © 2020 김종권. All rights reserved.
//

import Foundation
import UIKit

final class ResultSignInVC: UIViewController, StoryboardInitializable {

    static var storyboardName: String = Constants.Storyboard.signIn
    static var storyboardID: String = ResultSignInVC.className // common extension에 정의하여 사용

    // MARK: - Properties

    var viewModel: ResultSignInVM!

    // MARK: - Initialize

    init?(coder: NSCoder, viewModel: ResultSignInVM) {
        self.viewModel = viewModel

        super.init(coder: coder)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
