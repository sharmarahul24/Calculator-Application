//
//  SquarePage.swift
//  Calculator Application
//
//  Created by R81 on 15/11/24.
//

import UIKit

class SquarePage: UIViewController {

    @IBOutlet weak var finalresult: UILabel!
    
    @IBOutlet weak var text1: UITextField!
    
    @IBOutlet weak var text2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func countactionbutton(_ sender: Any) {
        
        if let Number = Double(text1.text!),
           let Square = Double(text2.text!){
            var Finalans = 1
            for i in 0..<Int(Square){
                Finalans = Finalans * Int(Number)
            }
            
            finalresult.text = String(Finalans)
        }
        
        
       else if text1.text == "" && text2.text == ""{
            alert(title: "alert", message: "Please Enter all details to calculate")
        }
        
        else if text1.text == ""{
            alert(title: "Error", message: "please input Number")
        }
        else if text2.text == ""{
            alert(title: "Error", message: "Please Enter Square or hour")
        }
    }
    
    func alert(title: String, message: String){
        let a = UIAlertController(title: title, message: message, preferredStyle: .alert)
        a.addAction(UIAlertAction(title: "OK", style: .default))
        a.addAction(UIAlertAction(title: "Cencle", style: .cancel))
        present(a, animated: true)
        
    }

    @IBAction func backButtonAction(_ sender: Any) {
        let neviget = storyboard?.instantiateViewController(identifier: "Option_Page") as! Option_Page
        navigationController?.popViewController(animated: true)
    }
}
