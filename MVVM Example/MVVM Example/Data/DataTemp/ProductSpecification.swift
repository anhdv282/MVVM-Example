//
//  ProductSpecification.swift
//  MVVM Example
//
//  Created by Viet Anh Dang on 6/22/20.
//  Copyright © 2020 Cadory. All rights reserved.
//

import UIKit
import SwiftyJSON

struct ProductSpecificationResponse {

    var arraySpecification: [ProductSpecification]?

    init(json: JSON) {
        if let arraySpecificationJson = json["data"].array {
           arraySpecification = [ProductSpecification]()
           for dataJson in arraySpecificationJson {
               let specification = ProductSpecification(json: dataJson)
               arraySpecification?.append(specification)
           }
        }
    }
}


struct ProductSpecification {

    var key: String?

    var value: String?

    init(json: JSON) {
        key = json["key"].string
        value = json["value"].string
    }

}
