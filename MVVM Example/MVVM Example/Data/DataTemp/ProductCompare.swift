//
//  ProductCompare.swift
//  MVVM Example
//
//  Created by Viet Anh Dang on 6/22/20.
//  Copyright © 2020 Cadory. All rights reserved.
//

import UIKit
import SwiftyJSON

struct ProductCompareResponse {

    var arrayCompare: [ProductCompare]?

    init(json: JSON) {
        if let arrayCompareJson = json["data"].array {
           arrayCompare = [ProductCompare]()
           for dataJson in arrayCompareJson {
               let compare = ProductCompare(json: dataJson)
               arrayCompare?.append(compare)
           }
        }
    }
}


struct ProductCompare {

    var name: String?

    var price: Double?

    init(json: JSON) {
        name = json["name"].string
        price = json["price"].double
    }

}
