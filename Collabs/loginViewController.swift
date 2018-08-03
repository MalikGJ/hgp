//
//  loginViewController.swift
//  Collabs
//
//  Created by Malik Garcia on 8/1/18.
//  Copyright © 2018 Malik Garcia. All rights reserved.
//

import UIKit
import FirebaseAuth
class loginViewController: UIViewController {
	
	/*
	func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error?) {
		// ...
		if error != nil {
			// ...
			return
		}
		
		guard let authentication = user.authentication else { return }
		let = GoogleAuthProvider.credential(withIDToken: authentication.idToken,
		accessToken: authentication.accessToken)
		// ...
	}
	*/
	@IBOutlet weak var email: UITextField!
	
	@IBOutlet weak var password: UITextField!
	


	
@IBAction func LOGINBTN(_ sender: Any) {
		Auth.auth().signIn(withEmail: email.text!, password: password.text!) { (user, error) in
			if user != nil{
				self.performSegue(withIdentifier: "login", sender: self)
				print("user logged in")
				
			}else{
				
				print("error")
				let alert = UIAlertController(title: "Email or password is incorrect", message: nil, preferredStyle: .alert)
				let okButton = UIAlertAction(title: "ok", style: .default, handler: nil)
				alert.addAction(okButton)
				self.present(alert, animated: true,completion: nil)
			}
			
			
		}
	}
	
	
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
