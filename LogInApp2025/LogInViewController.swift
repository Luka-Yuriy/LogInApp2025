//
//  fdfViewController.swift
//  LogInApp2025
//
//  Created by Yurii Luka on 04.12.2024.
//

import UIKit

class LogInViewController: UIViewController {
    //MARK: - IBOuntlets
    @IBOutlet var welcomeMessageLabel: UILabel!
    @IBOutlet var helloLabel: UILabel!
    
    //MARK: - Propherties
    var userName: String!
    
    //MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeMessageLabel.text = "Welcome \(userName ?? "")"
        helloLabel.text = "👋"
        setGradienBackgraund()
    }

    //MARK: - Private methods
    private func setGradienBackgraund() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
        gradientLayer.locations = [0.3, 0.7, 0.8]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.frame = view.frame
        view.layer.insertSublayer(gradientLayer, at: 0)
       }
}
    

