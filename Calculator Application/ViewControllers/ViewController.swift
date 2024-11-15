//
//  ViewController.swift
//  Calculator Application
//
//  Created by R81 on 15/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func GetstartButtonAction(_ sender: Any) {
        
       
            let neviget = storyboard?.instantiateViewController(identifier: "Option_Page") as! Option_Page
            navigationController?.pushViewController(neviget, animated: true)
        
    }
    @IBAction func AboutUs(_ sender: Any) {
        
       
            let neviget = storyboard?.instantiateViewController(identifier: "AboutusPage") as! AboutusPage
            navigationController?.pushViewController(neviget, animated: true)
        
    }

}

