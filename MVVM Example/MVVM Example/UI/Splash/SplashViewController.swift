//
//  SplashViewController.swift
//  MVVM Example
//
//  Created by Viet Anh Dang on 6/24/20.
//  Copyright © 2020 Cadory. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.showProductListingViewController()
        }
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func showProductListingViewController() {
        let productListViewController = ProductListingViewController()
        self.navigationController?.pushViewController(productListViewController, animated: true)
    }

}
