//
//  ViewSplash.swift
//  IPriceChecker
//
//  Created by yopa bagus on 13/02/23.
//

import UIKit

class ViewSplash: UIViewController {
    
  
    @IBOutlet weak var btnStart: UIButton!
    var presenter: PresenterSplash
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setBackgroundBlue(color1: Colors.blueLight, color2: Colors.blueDark)
        setUpButton()

    }
    
    init(presenter: PresenterSplash){
        self.presenter = presenter
        super.init(nibName: String(describing: ViewSplash.self), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ViewSplash {
    func setUpButton(){
        
        btnStart.addBorder(radius: 30,
                           width: 1,
                           borderColor: UIColor.white.cgColor)
        btnStart.addTarget(self, action: #selector(loginPress(_:)), for: .touchUpInside)
        
    }
}

extension ViewSplash {
    @objc private func loginPress(_ sender: UIButton){
        if let navigationToLogin = self.navigationController {
            presenter.navigationToViewLogin(navigation: navigationToLogin)
        }
    }
}
