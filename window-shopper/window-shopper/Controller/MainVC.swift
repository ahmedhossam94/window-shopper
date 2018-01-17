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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
      calcButton.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wgeTxt.inputAccessoryView = calcButton
        pricetxt.inputAccessoryView = calcButton
       
        
    }

    
    
    @objc func calculate()  {
        
        print("aaaaa")
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
   /* func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
*/
}

