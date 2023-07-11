//
//  ViewController.swift
//  AlertProject
//
//  Created by uludağ on 23.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passawordText: UITextField!
    
    @IBOutlet weak var passaword2ndText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    

    
    @IBAction func signupClickted(_ sender: Any) {
        /*
         let alert = UIAlertController(title: "Eror!!", message: "Passaword not found", preferredStyle: UIAlertController.Style.alert)
                 let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
                     // button clicked
                     print("button clicked")
                 }
                 alert.addAction(okButton)
                 self.present(alert, animated: true, completion: nil)
         */
        
        if usernameText.text == "" {
            alertFunctions(titleInput: "Error", messageInput: "Username not found")
            
        }else if passawordText.text == "" {
            alertFunctions(titleInput: "Error", messageInput: "Passaword not found")
            }else if passaword2ndText.text != passawordText.text {
            alertFunctions(titleInput: "Error", messageInput: "Passaword Do not match")
        }else {
            alertFunctions(titleInput: "Success", messageInput: "User Okayyy")
        }
        
    }
    
    
    func alertFunctions(titleInput :String, messageInput : String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    
}

