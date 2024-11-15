//
//  AboutusPage.swift
//  Calculator Application
//
//  Created by R81 on 15/11/24.
//

import UIKit

class AboutusPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func backButtonAction(_ sender: Any) {
        let neviget = storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController
        navigationController?.popViewController(animated: true)
    }

}
