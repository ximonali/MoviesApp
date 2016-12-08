//
//  RegisterVC.swift
//  
//
//  Created by macadmin on 2016-03-19.
//
//

import UIKit

class RegisterVC: UIViewController {

    //Var
    var userFlag: Bool = false;
    var myName: String = "";
    var myEmail: String = "";
    var myPassword: String = "";

    //Controls
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBAction func btnAdd(_ sender: UIButton) {
        if (checkUser()) {
            userFlag = false;
            //self.performSegueWithIdentifier("go2WelcomeVC", sender: self)
  
            let userAdd = UIAlertController(title: "User Registered!", message: "", preferredStyle: UIAlertControllerStyle.alert)
            
            let cancelAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
            
            
            userAdd.addAction(cancelAction);
            
            self.present(userAdd, animated: true, completion: nil)
            
            
            txtName.text = "";
            txtPassword.text = "";
            txtEmail.text = "";
            
        }else {
        
            print("NO")
        }
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userFlag = false;
        self.navigationController?.isNavigationBarHidden = false
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func checkUser()->Bool{

        
        if (!(txtName.text?.isEmpty)! && !(txtPassword.text?.isEmpty)! && !(txtEmail.text?.isEmpty)!){
            txtName.backgroundColor = UIColor.white;
            txtPassword.backgroundColor = UIColor.white;
            txtEmail.backgroundColor = UIColor.white;
            userFlag = true;
            
        }
            
        else if ((txtName.text?.isEmpty)! && !(txtPassword.text?.isEmpty)! && !(txtEmail.text?.isEmpty)!){
            txtName.backgroundColor = UIColor.red;
            txtPassword.backgroundColor = UIColor.white;
            txtEmail.backgroundColor = UIColor.white;
            errorPopUp("Username can't be null!")
            
        }
            
        else if (!(txtName.text?.isEmpty)! && (txtPassword.text?.isEmpty)! && !(txtEmail.text?.isEmpty)!) {
            txtPassword.backgroundColor = UIColor.red;
            txtName.backgroundColor = UIColor.white;
            txtEmail.backgroundColor = UIColor.white;
            errorPopUp("Password can't be null!")
        }
            
        else if (!(txtName.text?.isEmpty)! && !(txtPassword.text?.isEmpty)! && (txtEmail.text?.isEmpty)!){
            txtPassword.backgroundColor = UIColor.white;
            txtName.backgroundColor = UIColor.white;
            txtEmail.backgroundColor = UIColor.red;
            errorPopUp("Username and Password can't be null!")
            
        } else if (!(txtName.text?.isEmpty)! && !(txtPassword.text?.isEmpty)! && (txtEmail.text?.isEmpty)!){
            txtName.backgroundColor = UIColor.white;
            txtPassword.backgroundColor = UIColor.white;
            txtEmail.backgroundColor = UIColor.red;
                
                errorPopUp("Email can't be null!")
        }
        
        return userFlag
    }//end checkUser
    
    
    func errorPopUp(_ msgError: String){
        let msgError = msgError
        
        let errorLogin = UIAlertController(title: "Register Error", message: msgError, preferredStyle: UIAlertControllerStyle.alert)
        
        let cancelAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.destructive, handler: nil)
        
        
        errorLogin.addAction(cancelAction);
        
        self.present(errorLogin, animated: true, completion: nil)
        
        
    }//end PopUpMsg

}
