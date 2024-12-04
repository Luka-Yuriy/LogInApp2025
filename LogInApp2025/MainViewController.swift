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
    @IBOutlet var userPasswordTF: UITextField!
    
    //MARK: - Private properties
    private let userName = "User"
    private let userPassword = "Password"
    
    //MARK: - Override methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let logInVC = segue.destination as? LogInViewController else { return }
        guard let userName = userNameTF.text else { return }
        logInVC.userName = userName
    }
    
    //MARK: - IBActions
    
    @IBAction func unwine(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        userPasswordTF.text = ""
    }
    
    @IBAction func logInButtonTapped() {
        guard let user = userNameTF.text else { return }
        guard let pasword = userPasswordTF.text else { return }
        
        if user == userName, userPassword == pasword {
            performSegue(withIdentifier: "segueToLogInVC", sender: nil)
        } else {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
        }
    }
    
    @IBAction func fogotUserNameButtonTapped() {
        showAlert(title: "Oops!", message: "Your name is \(userName) 😉")
    }
    
    @IBAction func fogotPasswordButtonTapped() {
        showAlert(title: "Oops!", message: "Your name is \(userPassword) 😉")
    }
}

    // MARK: - Extantions
extension MainViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default) { _ in
            self.userPasswordTF.text = ""
            }
        )
        present(alert, animated: true)
    }
}
