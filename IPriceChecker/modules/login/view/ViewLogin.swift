//
//  ViewLogin.swift
//  IPriceChecker
//
//  Created by yopa bagus on 16/02/23.
//

//connect presenter

import UIKit
import RxSwift
import RxCocoa

class ViewLogin: UIViewController {

    @IBOutlet weak var wrapUser: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var btnHidePass: UIButton!
    @IBOutlet weak var btnForgotPass: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var btnFacebook: UIButton!
    @IBOutlet weak var btnGoogle: UIButton!
    
    var presenter: PresenterLogin
    
    init(presenter: PresenterLogin){
        self.presenter = presenter
        super.init(nibName: String(describing: ViewLogin.self), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLogin()
        

    }
}

extension ViewLogin {
    func setUpLogin(){
        
        btnLogin.addBorder(radius: 30,
                           width: 1,
                           borderColor: UIColor.white.cgColor)
        btnRegister.addTarget(self, action: #selector(registerPress(_:)), for: .touchUpInside)
        
    }
}

extension ViewLogin {
    
    @objc private func registerPress(_ sender:UIButton){
        if let navigation = self.navigationController {
            presenter.registerPress(navigationRegister: navigation)
        }
    }
}
