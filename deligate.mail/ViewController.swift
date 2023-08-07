//
//  ViewController.swift
//  deligate.mail
//
//  Created by Ragulkumar K V on 19/07/23.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        valid(a: 7)
        // Do any additional setup after loading the view.
    }
    
    func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func BUTTON(_ sender: Any) {
        let email = isValidEmail(email: textfield.text!)
        if email == false{
            showAlert(title: "ERROR", message: "This is not a valid email.Please try again.")
            textfield.text = ""
        }
    }
    
    func valid(a: Int) {
       // var a = 5
        print(a)
    }
}
