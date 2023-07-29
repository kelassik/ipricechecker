//
//  ViewMain.swift
//  IPriceChecker
//
//  Created by yopa bagus on 20/02/23.
//

import UIKit

class ViewMain: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tabProductGlobal: UITableView!
    let cellSpacingHeight: CGFloat = 5
//    {
//        didSet {
//            tabProductGlobal.register(ViewProductCell.nib, forCellReuseIdentifier: ViewProductCell.identifier)
//        }
//    }
    struct Product {
        let txtNameProduct: String
        let txtPrice : String
        let txtStoreName : String
        let imgProduct : String
        
    }
    
    let data:[Product] = [
    Product(txtNameProduct: "Toothbrush", txtPrice: "10000", txtStoreName: "Toko Klontong Nino Adi Jogja", imgProduct: "tootbrush"),
    Product(txtNameProduct: "Toothbrush", txtPrice: "10000", txtStoreName: "Toko Klontong Nino Adi jogja", imgProduct: "tootbrush"),
    Product(txtNameProduct: "Toothbrush", txtPrice: "10000", txtStoreName: "Toko Klontong Nino Adi jogja", imgProduct: "tootbrush"),
    Product(txtNameProduct: "Toothbrush", txtPrice: "10000", txtStoreName: "Toko Klontong Nino Adi jogja", imgProduct: "tootbrush"),
    Product(txtNameProduct: "Toothbrush", txtPrice: "10000", txtStoreName: "Toko Klontong Nino Adi jogja", imgProduct: "tootbrush"),
    Product(txtNameProduct: "Toothbrush", txtPrice: "10000", txtStoreName: "Toko Klontong Nino Adi jogja", imgProduct: "tootbrush")
    ]
    
    
    
    var presenter: PresenterMain
    
    init(presenter: PresenterMain) {
        self.presenter = presenter
        super.init(nibName: String(describing: ViewMain.self), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "ItemTableViewCell", bundle: nil)
        tabProductGlobal.register(nib, forCellReuseIdentifier: "cell")
        tabProductGlobal.delegate = self
        tabProductGlobal.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return cellSpacingHeight
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let product = self.data[indexPath.section]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ItemTableViewCell
        cell.txtNameProduct.text = product.txtNameProduct
        cell.txtPrice.text = product.txtPrice
        cell.txtNameStore.text = product.txtStoreName
        cell.imgProduct.image = UIImage(named: product.imgProduct)
        
        return cell
    }
}
