//
//  ViewController.swift
//  Collabs
//
//  Created by Malik Garcia on 7/30/18.
//  Copyright © 2018 Malik Garcia. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn
class MainViewController: UIViewController, GIDSignInUIDelegate {
	
	
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		GIDSignIn.sharedInstance().uiDelegate = self
		GIDSignIn.sharedInstance().signIn()
		
		// TODO(developer) Configure the sign-in button look/feel
		// ...
	}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


	
	class MainViewController: UITableViewController, GIDSignInUIDelegate {
		override func viewDidLoad() {
			super.viewDidLoad()
			
			GIDSignIn.sharedInstance().uiDelegate = self
			GIDSignIn.sharedInstance().signIn()
			
			// TODO(developer) Configure the sign-in button look/feel
			// ...
		}
	
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

	
	@IBAction func LogInforInstagram(_ sender: Any) {
		UIApplication.shared.open(URL(string: "https://www.instagram.com/accounts/login/?hl=en")! as URL, options: [:], completionHandler: nil)
	}
}
}
}
