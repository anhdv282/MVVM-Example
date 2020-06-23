//
//  ProductDescription.swift
//  MVVM Example
//
//  Created by Viet Anh Dang on 6/22/20.
//  Copyright © 2020 Cadory. All rights reserved.
//

import UIKit
import SwiftyJSON

struct ProductDescription {

    var description: String?

    init(json: JSON) {
        description = json["data"].string
    }

}
