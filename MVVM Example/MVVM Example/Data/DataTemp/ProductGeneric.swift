//
//  ProductGeneric.swift
//  MVVM Example
//
//  Created by Viet Anh Dang on 6/22/20.
//  Copyright © 2020 Cadory. All rights reserved.
//

import UIKit
import SwiftyJSON

struct ProductGenericResponse {

    var arrayGeneric: [ProductGeneric]?

    init(json: JSON) {
        if let arrayGenericJson = json["data"].array {
           arrayGeneric = [ProductGeneric]()
           for dataJson in arrayGenericJson {
               let generic = ProductGeneric(json: dataJson)
               arrayGeneric?.append(generic)
           }
        }
    }
}

struct ProductGeneric {

    var image: String?

    var name: String?

    var finalPrice: Double?

    var totalPrice: Double?

    init(json: JSON) {
        image = json["image"].string
        name = json["name"].string
        finalPrice = json["finalPrice"].double
        totalPrice = json["totalPrice"].double
    }

}
