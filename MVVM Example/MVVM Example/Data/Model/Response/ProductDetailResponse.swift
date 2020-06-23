//
//  ProductDetailResponse.swift
//  MVVM Example
//
//  Created by Viet Anh Dang on 6/22/20.
//  Copyright © 2020 Cadory. All rights reserved.
//

import UIKit
import SwiftyJSON

class ProductDetailResponse: NSObject {

    var code: String?

    var errorMsg: String?

    var result: ProuductDetailResult?

    init(json: JSON) {
        code = json["code"].string
        errorMsg = json["error_msg"].string
        result = ProuductDetailResult(json: json["result"])
    }

}

struct ProuductDetailResult {

    var product: Product?

    init(json: JSON) {
        product = Product(json: json["product"])
    }

}
