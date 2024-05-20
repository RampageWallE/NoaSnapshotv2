//
//  ViewController.swift
//  NoaSnapchat
//
//  Created by Piero Valentino Noa Chahuayo on 20/05/24.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseCore
import GoogleSignIn

class iniciarSesionViewController: UIViewController {
    
    //VARIABLES
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //ACTIONS
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!){(user, error) in
            print("Intentando iniciar Sesion")
            if error != nil {
                print("Parece que tuviste algun error: \(error)")
            }else{
                print("Inicio de sesion exitoso")
            }
        }
    }
    
    //FUNCTIONS

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

