//
//  ViewController.swift
//  GenericApiCall
//
//  Created by PHN Tech 2 on 06/05/23.
//

import UIKit

class ViewController: UIViewController {
let user = UsersData(networkManager: NetworkManager())
    let product = ProductData(networkManager: NetworkManager())
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // user.getUserData()
        //product.getProductData()
        
    }


}

