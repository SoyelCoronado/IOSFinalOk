//
//  logViewController.swift
//  práctica 2
//
//  Created by alejandro Coronado on 7/7/19.
//  Copyright © 2019 MTI CUCEA. All rights reserved.
//

import UIKit

class logViewController: UIViewController {
    
    @IBOutlet weak var txtuser: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    let user = "alex"
    let pass = "12345"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Login(_ sender: Any) {
        
        //1 paso: validar que no esten vacios los campos
        if (txtuser.text!.isEmpty || txtPassword.text!.isEmpty) {
            let alert = UIAlertController(title: "cuidado", message: "debes llenar todos los campos", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ah ok", style: .destructive, handler: nil))
            present(alert, animated: true, completion: nil)
            
        }
            //2 paso: Validar que concuerden con info los campos
        else if (txtuser.text! == user && txtPassword.text! == pass)
            
            //3 paso: Realizar accion correspondiente
        {
            performSegue(withIdentifier: "ingresar", sender: nil)
            let alert = UIAlertController(title: "Bienvenido", message: "Password correcto", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            
            
        }
        else {
            let alert = UIAlertController(title: "Error", message: "Credenciales incorrectas", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Reintentar", style: .destructive, handler: nil))
            present(alert, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func ForgotPassword(_ sender: Any) {
        let alert = UIAlertController(title: "¿Olvidaste tu contraseña?", message: "Si no la tienes, puedes ir a buscarla", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Buscar Contraseña", style: .destructive, handler: nil))
        alert.addAction(UIAlertAction(title: "¡La tengo!", style: .default, handler: { (action) in
            print("¡Password Encontrada!")
        } ))
        
        present(alert, animated: true, completion: nil)
        
    }
    
}
