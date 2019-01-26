//
//  ViewController.swift
//  Camera
//
//  Created by Z on 2019/01/26.
//  Copyright © 2019 Z. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBAction func launchCamera(_ sender: UIBarButtonItem) {
        
        //列挙体 そ省略可
        //let camera = UIImagePickerController.SourceType.camera
        
        //if UIImagePickerController.isSourceTypeAvailable(camera) {
        //列挙体省略バージョン
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let picker = UIImagePickerController()
            //picker.sourceType = camera
            picker.sourceType = .camera
            picker.delegate = self
            self.present(picker, animated: true)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //ダウンキャスティング（下位オブジェクトへのキャスト）
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        self.imageView.image = image
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        self.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

