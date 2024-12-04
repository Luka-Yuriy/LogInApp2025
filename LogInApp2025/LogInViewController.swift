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
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(userName!)
        welcomeMessageLabel.text = "Welcome \(userName ?? "")"
        helloLabel.text = "👋"
    }
    
    @IBAction func logOutButtonTapped() {
 

    }
}
