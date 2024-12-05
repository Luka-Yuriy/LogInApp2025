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
    private let userName = "1"
    private let userPassword = "2"
    
    //MARK: - Override methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let logInVC = segue.destination as? LogInViewController else { return }
        logInVC.userName = userName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: - IBActions
    @IBAction func logInButtonTapped() {
        guard userNameTF.text == userName, userPasswordTF.text == userPassword else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password"
            )
            return
        }
        performSegue(withIdentifier: "openLogInVC", sender: nil)
    }
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(userName) 😉")
        : showAlert(title: "Oops!", message: "Your name is \(userPassword) 😉")
    }
    
    @IBAction func unwined(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        userPasswordTF.text = ""
    }
}

    // MARK: - Extantions
    extension MainViewController {
        private func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message, preferredStyle: .alert
        )
            
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userPasswordTF.text = ""
        }
            
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
