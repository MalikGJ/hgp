//
//  ImagePickerView.swift
//  Collabs
//
//  Created by Malik Garcia on 8/2/18.
//  Copyright © 2018 Malik Garcia. All rights reserved.
//

import UIKit

class ImagePickerView: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
	
	@IBAction func PickImage(_ sender: Any)
	{
		let image = UIImagePickerController()
		image.delegate = self
		
		image.sourceType = UIImagePickerControllerSourceType.photoLibrary
		
		image.allowsEditing = false
		
		self.present(image, animated: true){
			//After it is completed
		}
		
	}
	@IBOutlet weak var ImageView: UIImageView!
	
	func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
	{
		if let image = info[UIImagePickerControllerOriginalImage] as? UIImage
		{
			ImageView.image = image
		}
		else
		{
			//error message
		}
			self.dismiss(animated: true, completion: nil)
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
