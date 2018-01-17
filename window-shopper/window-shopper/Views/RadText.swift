//
//  RadText.swift
//  window-shopper
//
//  Created by egy10 on 1/16/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import UIKit
@IBDesignable
class RadText: UITextField {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func prepareForInterfaceBuilder() {
        customeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
    customeView()
       
    }
   
    
    func customeView()  {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2918985445)
        layer.cornerRadius = 5
        textAlignment = .center
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        if let p = placeholder {
            let placehold = NSAttributedString(string: p, attributes:[ .foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = placehold
            
        }
    }
}
