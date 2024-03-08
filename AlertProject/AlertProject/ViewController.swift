//
//  ViewController.swift
//  AlertProject
//
//  Created by Batu on 26.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    @IBOutlet weak var usernameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signupClicked(_ sender: Any) {
        
        /*
         let alert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
         let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
         //buttonClicked
         print("button clicked")
         }
         alert.addAction(okButton)
         self.present(alert, animated: true, completion: nil)
         
         */
        if usernameText.text == "" {
            makeAlert(titleInput: "Error ", messageInput: "Username not found")
        } else if passwordText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password not found")
        } else if passwordText.text != password2Text.text {
            makeAlert(titleInput: "Error", messageInput: "Passwords do not match")
        } else {
            makeAlert(titleInput: "Success", messageInput: "User OK")
        }
    }
    func makeAlert(titleInput: String, messageInput:String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}
