//
//  fdfViewController.swift
//  LogInApp2025
//
//  Created by Yurii Luka on 04.12.2024.
//

import UIKit

final class LogInViewController: UIViewController {
    //MARK: - IBOuntlets
    @IBOutlet var welcomeMessageLabel: UILabel!
    
    //MARK: - Propherties
    var userName = ""
    
    //MARK: - Private Propherties
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    //MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessageLabel.text = "Welcome, \(userName)!"
        view.addVerticalGraduentLayer(
            topColor: primaryColor,
            buttonColor: secondaryColor
        )
    }
}
    
    //MARK: - Extention LoginViewController
extension UIView {
    func addVerticalGraduentLayer(topColor: UIColor, buttonColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, buttonColor.cgColor]
        gradient.locations = [0, 1]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
