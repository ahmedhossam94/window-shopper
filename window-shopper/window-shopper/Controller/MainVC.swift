//
//  ViewController.swift
//  window-shopper
//
//  Created by egy10 on 1/16/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import UIKit

class MainVC: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var wgeTxt: RadText!
    @IBOutlet weak var pricetxt: RadText!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hourLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // make clcultae button by code
       
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wgeTxt.inputAccessoryView = calcButton
        pricetxt.inputAccessoryView = calcButton
       
        resultLbl.isHidden = true
        hourLbl.isHidden = true
    }

    
    
    @objc func calculate()  {
       
        if let wageTx = wgeTxt.text, let priceTx = pricetxt.text{
            if let wage = Double (wageTx), let price = Double(priceTx){
                resultLbl.isHidden = false
                hourLbl.isHidden = false
               view.endEditing(true)
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
       
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
 
    @IBAction func clearCalcPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hourLbl.isHidden = true
        wgeTxt.text = ""
        pricetxt.text = ""
    }
    
}

