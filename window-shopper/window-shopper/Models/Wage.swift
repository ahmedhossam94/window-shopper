//
//  wage.swift
//  window-shopper
//
//  Created by ahmed on 1/18/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import Foundation
class Wage{
 
   class func getHours(forWage wage: Double ,andPrice price: Double ) -> Int {
        return Int(ceil(price/wage))
    }
    
}
