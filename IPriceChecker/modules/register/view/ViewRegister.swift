//
//  ViewRegister.swift
//  IPriceChecker
//
//  Created by yopa bagus on 19/02/23.
//

import UIKit
import RxSwift
import RxCocoa

class ViewRegister: UIViewController {

    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var btnHideConfirmPass: UIButton!
    @IBOutlet weak var btnHidePass: UIButton!
    @IBOutlet weak var fieldConfirmPassword: UITextField!
    @IBOutlet weak var fieldPassword: UITextField!
    @IBOutlet weak var fieldEmail: UITextField!
    @IBOutlet weak var fieldLastName: UITextField!
    @IBOutlet weak var fieldFirstName: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnFacebook: UIButton!
    @IBOutlet weak var btnGoogle: UIButton!
    
    private let disposebag = DisposeBag()
    
    var presenter: PresenterRegister
    
    init(presenter: PresenterRegister){
        self.presenter = presenter
        super.init(nibName: String(describing: ViewRegister.self), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpRegister()
     
    }
}

extension ViewRegister {
    
    func setUpRegister(){
        btnRegister.addBorder(radius: 30,
                              width: 1,
                              borderColor: UIColor.white.cgColor)
    
        btnLogin.addTarget(self, action: #selector(backToLoginPress(_:)), for: .touchUpInside)
        btnRegister.addTarget(self, action: #selector(navToMainPress(_:)), for: .touchUpInside)
    }
    
    func setUpRx() {
        
    }
}

extension ViewRegister{
    
    @objc private func backToLoginPress(_ sender:UIButton){
        if let navigationLogin = self.navigationController {
            presenter.backToLogin(navigationLogin: navigationLogin)
        }
    }
    
    @objc private func navToMainPress(_ sender:UIButton){
        if let navigationMain = self.navigationController{
            presenter.navToMain(navigationToMain: navigationMain)
        }
    }
}
