//
//  Coupon.swift
//  TestesUnitarios
//
//  Created by Yuri Moura on 05/11/20.
//

import Foundation

struct Coupon {
    let discountPercentage: Double
    var isValid: Bool
    
    func getDiscountValue(value: Double) -> Double {
        return self.isValid ? value*self.discountPercentage : 0
    }
    
    func getValueWithDiscount(value: Double) -> Double {
        let valueWithDiscount = value - value*self.discountPercentage
        return self.isValid ? valueWithDiscount : value
    }
}
