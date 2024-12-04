//
//  ViewController.swift
//  LogInApp2025
//
//  Created by Yurii Luka on 04.12.2024.
//

import UIKit

class MainViewController: UIViewController {
    //MARK: - IBOuntlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    //MARK: - Private properties
    private let userName = "User1"
    private let password = "Password1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - IBActions
    @IBAction func logInButtonTapped() {
        
    }
    
    @IBAction func fogotUserNameButtonTapped() {
        showAlert(title: "Oops!", message: "Your name is \(userName) 😉")
    }
    
    @IBAction func fogotPasswordButtonTapped() {
            showAlert(title: "Oops!", message: "Your name is \(password) 😉")
    }
}

    // MARK: - Extantions
extension MainViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}
