//
//  Double+Extension.swift
//  MVVM Example
//
//  Created by Viet Anh Dang on 6/22/20.
//  Copyright © 2020 Cadory. All rights reserved.
//

import Foundation

extension Double {

    ///format from normal to format number
    /// 122231.8 -> 122.231,8
    func formatnumber() -> String? {
        let formater = NumberFormatter()
        formater.numberStyle = .decimal
        formater.locale = Locale.current
        return formater.string(from: NSNumber(value: self))
    }

    func formatNumberCurrency() -> String? {
        let formater = NumberFormatter()
        formater.numberStyle = .decimal
        formater.locale = Locale.current
        if let value = formater.string(from: NSNumber(value: self)) {
            return value + "₫"
        } else {
            return nil
        }
    }

}
