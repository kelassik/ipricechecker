//
//  BaseInteractor.swift
//  IPriceChecker
//
//  Created by yopa bagus on 14/04/23.
//

import Foundation
import RxSwift


class BaseViewController: UIViewController {
    let bag = DisposeBag()
}

class BaseInteractor {
    var api = ApiManager()
    var bag = DisposeBag()
}

