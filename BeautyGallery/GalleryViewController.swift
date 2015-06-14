//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by 王钊 on 15/6/14.
//  Copyright (c) 2015年 王钊. All rights reserved.
//

import UIKit
import Social

class GalleryViewController: UIViewController {
    var imgName: String?
    @IBOutlet weak var beatyImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        if self.imgName != nil {
//            beatyImage.image = UIImage(named: self.imgName)
//        }
        if let name = imgName {
            beatyImage.image = UIImage(named: name)
            switch (name) {
            case "fanbingbing":
                navigationItem.title = "范冰冰"
                break;
            case "libingbing":
                navigationItem.title = "李冰冰"
                break;
            case "wangfei":
                navigationItem.title = "王菲"
                break;
            case "yangmi":
                navigationItem.title = "杨幂"
                break;
            case "zhouxun":
                navigationItem.title = "周迅"
                break;
            default:
                navigationItem.title = "女神画廊"
                break;
            }
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func shareTapped(sender: AnyObject) {
        var controller : SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        controller.setInitialText("ceshi")
        controller.addImage(beatyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
}











