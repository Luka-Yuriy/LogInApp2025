//
//  fdfViewController.swift
//  LogInApp2025
//
//  Created by Yurii Luka on 04.12.2024.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet var welcomeMessageLabel: UILabel!
    @IBOutlet var helloLabel: UILabel!
    
    let userName: String! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.text = "👋"
    }
    
    @IBAction func logOutButtonTapped() {
        
    }
}
