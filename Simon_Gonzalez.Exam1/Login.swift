//
//  ViewController.swift
//  Simon_Gonzalez.Exam1
//
//  Created by macadmin on 2016-03-19.
//  Copyright (c) 2016 macadmin. All rights reserved.
//

import UIKit

class Login: UIViewController {

    
    //Var
    var userFlag: Bool = false;
    var localUser: String = "test@test.com";
    var localPass: String = "abc123";
    
    //Text
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    //Label
    @IBOutlet weak var lblMsg: UILabel!
    //Image
    @IBOutlet weak var ImageView: UIImageView!
    //Button
    @IBAction func btnLogin(_ sender: UIButton) {
        if (checkUser()) {
            userFlag = false;
            self.performSegue(withIdentifier: "go2WelcomeVC", sender: self)
            txtName.text = "";
            txtPassword.text = "";
            
        }
        
    }//end btnLogin
    
    @IBAction func btnRegister(_ sender: UIButton) {
        self.performSegue(withIdentifier: "go2RegisterVC", sender: self)
        
    }//end btnRegister
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }//end willAppear
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "go2WelcomeVC" {
            let xWelcomeVC = segue.destination as! WelcomeVC;
            var nueva = "";
            nueva = txtName.text!;
            xWelcomeVC.actualUser = txtName.text!;
            
        }else if segue.identifier == "go2RegisterVC" {
            let myRegisterDetail = segue.destination as! RegisterVC;
            var algo = "";
            
        }
        
    }// end prepareForSegue
    
    func loadMain(){
        userFlag = false;
        lblMsg.text = "";
        
        ImageView.layer.cornerRadius = ImageView.frame.size.width/2
        ImageView.clipsToBounds = true
        ImageView.contentMode = .scaleToFill
        ImageView.image = UIImage(named: "loginimage")
        
    }//end loadMain
    
    func checkUser()->Bool{
        lblMsg.text = "";
        
        if (!(txtName.text?.isEmpty)! && !(txtPassword.text?.isEmpty)!){
            txtName.backgroundColor = UIColor.white;
            txtPassword.backgroundColor = UIColor.white;
            
            if (txtName.text == localUser && txtPassword.text == localPass){
                userFlag = true;
            }
            else if (txtName.text != localUser && txtPassword.text == localPass){
                //lblMsg.text = "Username did not Match!"
                errorPopUp("Username did not Match!")
            }else if(txtName.text == localUser && txtPassword.text != localPass){
                //lblMsg.text = "Password did not Match!"
                errorPopUp("Password did not Match!")
            }else if(txtName.text != localUser && txtPassword.text != localPass){
                //lblMsg.text = "Username and Password did not Match!"
                errorPopUp("Username and Password did not Match!")
            }
            
            
        }
            
        else if ((txtName.text?.isEmpty)! && !(txtPassword.text?.isEmpty)!){
            txtName.backgroundColor = UIColor.red;
            txtPassword.backgroundColor = UIColor.white;
            //lblMsg.text = "Username can't be null!"
            errorPopUp("Username can't be null!")
            
        }
            
        else if (!(txtName.text?.isEmpty)! && (txtPassword.text?.isEmpty)!) {
            txtPassword.backgroundColor = UIColor.red;
            txtName.backgroundColor = UIColor.white;
            //lblMsg.text = "Password can't be null!"
            errorPopUp("Password can't be null!")
        }
            
        else if ((txtName.text?.isEmpty)! && (txtPassword.text?.isEmpty)!){
            txtPassword.backgroundColor = UIColor.red;
            txtName.backgroundColor = UIColor.red;
            //lblMsg.text = "Username and Password can't be null!"
            errorPopUp("Username and Password can't be null!")
            
        }
        
        return userFlag
    }//end checkUser
    
    
    func errorPopUp(_ msgError: String){
        let msgError = msgError
        
        let errorLogin = UIAlertController(title: "Authentication Error", message: msgError, preferredStyle: UIAlertControllerStyle.alert)
        
        let cancelAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.destructive, handler: nil)

        
        errorLogin.addAction(cancelAction);
        
        self.present(errorLogin, animated: true, completion: nil)
        
        
    }//end PopUpMsg
    


}//end login

