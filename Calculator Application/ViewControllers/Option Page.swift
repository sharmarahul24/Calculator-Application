//
//  Option Page.swift
//  Calculator Application
//
//  Created by R81 on 15/11/24.
//

import UIKit

class Option_Page: UIViewController {

    @IBOutlet weak var schoolresult: UIView!
    
    
    @IBOutlet weak var interest: UIView!
    
    @IBOutlet weak var Emi: UIView!
    
    @IBOutlet weak var mutualFund: UIView!
    
    
    @IBOutlet weak var SquarAndHours: UIView!
    
    
    @IBOutlet weak var Discount: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        radius()
        
    }
    func radius(){
        schoolresult.layer.cornerRadius = 20.20
        interest.layer.cornerRadius = 20.20
        Emi.layer.cornerRadius = 20.20
        mutualFund.layer.cornerRadius = 20.20
        SquarAndHours.layer.cornerRadius = 20.20
        Discount.layer.cornerRadius = 20.20
        
    }
    
    
    @IBAction func backButtonAction(_ sender: Any) {
        let neviget = storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController
        navigationController?.popViewController(animated: true)
    }
    
    
    
    
    
    @IBAction func mutualFundAction(_ sender: Any) {
        let neviget = storyboard?.instantiateViewController(identifier: "MutualFundCalculator") as! MutualFundCalculator
        navigationController?.pushViewController(neviget, animated: true)
        
    }
  
    
    @IBAction func interestActionBtn(_ sender: Any) {
        let neviget2 = storyboard?.instantiateViewController(identifier: "InterestPage") as! InterestPage
        navigationController?.pushViewController(neviget2, animated: true)
        
        
    }
   
    
    @IBAction func discountActionBtn(_ sender: Any) {
        let neviget3 = storyboard?.instantiateViewController(identifier: "DiscountPage") as! DiscountPage
        navigationController?.pushViewController(neviget3, animated: true)
        
    }
   
    
    @IBAction func EmiActionBtn(_ sender: Any) {
        let neviget4 = storyboard?.instantiateViewController(identifier: "EmiPage") as! EmiPage
        navigationController?.pushViewController(neviget4, animated: true)
    }
  
    
    @IBAction func schoolResultActionBtn(_ sender: Any) {
        let neviget5 = storyboard?.instantiateViewController(identifier: "SchoolResultPage") as! SchoolResultPage
        navigationController?.pushViewController(neviget5, animated: true)
    }
   
    @IBAction func squareOrHourActionBtn(_ sender: Any) {
        let neviget6 = storyboard?.instantiateViewController(identifier: "SquarePage") as! SquarePage
        navigationController?.pushViewController(neviget6, animated: true)
        
    }
    

}
