//
//  ViewController.swift
//  DropDownMenu
//
//  Created by Ranga Madushan on 4/15/18.
//  Copyright © 2018 Ranga Madushan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var selectFoodBtn: UIButton!
    //poduwe dropdown menu eke ham ekma mekat dala tiyenne
    @IBOutlet var foodItems: [UIButton]!
    
    @IBOutlet weak var nameLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectFoodBtn.layer.cornerRadius = selectFoodBtn.frame.height / 2.0
        
        foodItems.forEach { (foodBtn) in
            foodBtn.layer.cornerRadius = foodBtn.frame.height / 2.0
            foodBtn.isHidden = true
        }
        
        
        
    }

    @IBAction func foodSelectionPressed(_ sender: UIButton) {
        
        //nikn for loop ekak wage
        foodItems.forEach { (foodsDown) in
            
            UIView.animate(withDuration: 0.4, animations: {
                
                // foodsDown.isHidden = false
                foodsDown.isHidden = !foodsDown.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }//btn action
    
    //poduwe dropdown menu eke ham ekma mekat dala tiyenne
    @IBAction func foodPressed(_ sender: UIButton) {
        
        if let selection = sender.titleLabel?.text {
            
            nameLbl.text = "You Choose \(selection)"
            
        }
        
    }
    

}//class

//meka github dann ona nisa nikn comment kara

















