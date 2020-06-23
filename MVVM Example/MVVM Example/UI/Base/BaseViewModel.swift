//
//  BaseViewModel.swift
//  MVVM Example
//
//  Created by Viet Anh Dang on 6/22/20.
//  Copyright © 2020 Cadory. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class BaseViewModel {

    lazy var provider: Provider = {
        return Provider()
    }()

    typealias RequestCompletion = ((_ success: Bool, _ error: String?, _ data: Any?) -> (Void))?

    public let loading: PublishSubject<Bool> = PublishSubject()

}
