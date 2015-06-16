//
//  DetailViewController.swift
//  rosterApp234
//
//  Created by Nitin Pai on 6/15/15.
//  Copyright (c) 2015 Nitin Pai. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    

    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    var selectedPerson : Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firstNameLabel.text = self.selectedPerson.firstName
        self.lastNameLabel.text = self.selectedPerson.lastName
        // Do any additional setup after loading the view.
    }
    
}
