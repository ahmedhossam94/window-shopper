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

    
    override func draw(_ rect: CGRect) {

        let size :CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2)-size/2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.8224352311, green: 0.8224352311, blue: 0.8224352311, alpha: 1)
        currencyLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencyLabel.textAlignment = .center
        currencyLabel.layer.cornerRadius = 5
        currencyLabel.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    
    }

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
        clipsToBounds = true
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        if let p = placeholder {
            let placehold = NSAttributedString(string: p, attributes:[ .foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = placehold
            
        }
    }
}
