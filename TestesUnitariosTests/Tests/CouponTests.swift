//
//  CouponTests.swift
//  TestesUnitariosTests
//
//  Created by Yuri Moura on 05/11/20.
//

import Quick
import Nimble
@testable import TestesUnitarios

class CouponTests: QuickSpec {
    
    var sut: Coupon!

    override func spec() {
        describe("Coupon Tests") {
            context("Discount Value") {
                beforeEach {
                    print("printed before every test case")
                }
                
                afterEach {
                    print("printed after every test case")
                }
                it("Discount value when coupon is valid") {
                    let coupon = Coupon(discountPercentage: 0.2, isValid: true)
                    
                    let discountValue = coupon.getDiscountValue(value: 2500)
                    
                    expect(discountValue).to(be(500.0))
                }
                
                it("Discount value when coupon is not valid") {
                    let coupon = Coupon(discountPercentage: 0.2, isValid: false)
                    
                    let discountValue = coupon.getDiscountValue(value: 2500)
                    
                    expect(discountValue).to(be(0.0))
                }
            }
        }
    }

}
