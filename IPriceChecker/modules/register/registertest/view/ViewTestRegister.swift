//
//  ViewTestRegister.swift
//  IPriceChecker
//
//  Created by yopa bagus on 13/04/23.
//

import UIKit
import RxSwift

class ViewTestRegister: BaseViewController {
    
    
    @IBOutlet weak var cifField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    @IBOutlet weak var fullnameField: UITextField!
    @IBOutlet weak var nicknameField: UITextField!
    @IBOutlet weak var genderField: UITextField!
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var residentField: UITextField!
    @IBOutlet weak var datebirthField: UITextField!
    @IBOutlet weak var placebirthField: UITextField!
    @IBOutlet weak var statusField: UITextField!
    
    var presenter: PresenterTestRegister
    
    init(presenter: PresenterTestRegister) {
        self.presenter = presenter
        super.init(nibName: String(describing: ViewTestRegister.self), bundle: nil)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var cifFieldValue = Binder<String>(cifField) { [weak self] _, _ in
        guard let self = self else {return}
    }
    lazy var emailFieldValue = Binder<String>(emailField) { [weak self] _, _ in
        guard let self = self else {return}
    }
    lazy var fullnameFieldValue = Binder<String>(fullnameField) { [weak self] _, _ in
        guard let self = self else {return}
    }
    lazy var nicknameFieldValue = Binder<String>(nicknameField) { [weak self] _, _ in
        guard let self = self else {return}
    }
    lazy var genderFieldValue = Binder<String>(genderField) { [weak self] _, _ in
        guard let self = self else {return}
    }
    lazy var statusFieldValue = Binder<String>(statusField) { [weak self] _, _ in
        guard let self = self else {return}
    }
    lazy var placebirthFieldValue = Binder<String>(placebirthField) { [weak self] _, _ in
        guard let self = self else {return}
    }
    lazy var datebirthFieldValue = Binder<String>(datebirthField) { [weak self] _, _ in
        guard let self = self else {return}
    }
    lazy var residentFieldValue = Binder<String>(residentField) { [weak self] _, _ in
        guard let self = self else {return}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setValueRegister()
        setAction()
        
 
    }
    
    func setAction() {
        btnRegister.rx.tap.subscribe({[weak self] _ in
            guard let self = self else { return }
            self.reqRegister()
        }).disposed(by: bag)
    }
    
    func reqRegister() {
        let cif = cifField.text ?? ""
        let email = emailField.text ?? ""
        let mobilephone = phoneField.text ?? ""
        let fullname = fullnameField.text ?? ""
        let nickname = nicknameField.text ?? ""
        let gender = genderField.text ?? ""
        let status = statusField.text ?? ""
        let placebirth = placebirthField.text ?? ""
        let datebirth = datebirthField.text ?? ""
        let resident = residentField.text ?? ""
        
        
        let paramData =  ParamRegister(cif: cif,
                                      email: email,
                                      mobilePhone: mobilephone,
                                      fullName: fullname,
                                      shortName: nickname,
                                      gender: gender,
                                      maritalStatus: status,
                                      placeOfBirth: placebirth,
                                      dateOfBirth: datebirth,
                                      residentType: resident)
        
        
        presenter
            .registration(param: paramData)
            .subscribe(onNext: {[weak self] data in
                guard let self = self else { return }
                print(data)
            }, onError: {[weak self] _ in
                guard let self = self else { return }
                print("errorr")
            })
            .disposed(by: bag)
    }
    
    
}

extension ViewTestRegister {
    func setValueRegister() {
        cifField.rx.text
            .compactMap{$0}
            .bind(to: cifFieldValue)
            .disposed(by: bag)
        emailField.rx.text
            .compactMap{$0}
            .bind(to: emailFieldValue)
            .disposed(by: bag)
        fullnameField.rx.text
            .compactMap{$0}
            .bind(to: fullnameFieldValue)
            .disposed(by: bag)
        nicknameField.rx.text
            .compactMap{$0}
            .bind(to: nicknameFieldValue)
            .disposed(by: bag)
        genderField.rx.text
            .compactMap{$0}
            .bind(to: genderFieldValue)
            .disposed(by: bag)
        statusField.rx.text
            .compactMap{$0}
            .bind(to: statusFieldValue)
            .disposed(by: bag)
        placebirthField.rx.text
            .compactMap{$0}
            .bind(to: placebirthFieldValue)
            .disposed(by: bag)
        datebirthField.rx.text
            .compactMap{$0}
            .bind(to: datebirthFieldValue)
            .disposed(by: bag)
        residentField.rx.text
            .compactMap{$0}
            .bind(to: residentFieldValue)
            .disposed(by: bag)
    }
}
