//
//  InterestPage.swift
//  Calculator Application
//
//  Created by R81 on 15/11/24.
//

import UIKit

class InterestPage: UIViewController {

    @IBOutlet weak var finalamount: UILabel!
    
    @IBOutlet weak var text3: UITextField!
    
    @IBOutlet weak var text2: UITextField!
    
    @IBOutlet weak var text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func alert(title: String, message: String){
        let a = UIAlertController(title: title, message: message, preferredStyle: .alert)
        a.addAction(UIAlertAction(title: "OK", style: .default))
        a.addAction(UIAlertAction(title: "Cencle", style: .cancel))
        present(a, animated: true)
    }
    
    @IBAction func calculateActionBtn(_ sender: Any) {
        if let principle = Double(text.text!),
           let interest = Double(text2.text!),
           let Years = Double(text3.text!){
            let Amount =  (1 + interest*Years)
            let P = (principle*Amount)
            
            finalamount.text = String(P)
        }
        else if text.text == "" && text2.text == "" && text3.text == ""{
            alert(title: "alert", message: "Please Enter all details to Calculat")
        }
    
        else if text.text == ""{
            alert(title: "Error", message: "please Enter Principle Amount")
        }
        else if text2.text == ""{
            alert(title: "Error", message: "Please Enter Interest Rate")
        }
        else if text3.text == ""{
            alert(title: "Error", message: "Please Enter Total time")
        }
   
    }
    @IBAction func backButtonAction(_ sender: Any) {
        let neviget = storyboard?.instantiateViewController(identifier: "Option_Page") as! Option_Page
        navigationController?.popViewController(animated: true)
    }
    

    

}
