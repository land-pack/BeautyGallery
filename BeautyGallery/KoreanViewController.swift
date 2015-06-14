//
//  KoreanViewController.swift
//  BeautyGallery
//
//  Created by 王钊 on 15/6/14.
//  Copyright (c) 2015年 王钊. All rights reserved.
//

import UIKit
import Social

class KoreanViewController: UIViewController {
    @IBOutlet weak var beautyImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func facebookShared(sender: AnyObject) {
        var controller : SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        controller.setInitialText("test facebook share")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    @IBAction func twitterShared(sender: AnyObject) {
        var controller : SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("test twitter share")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    @IBAction func weiboShared(sender: AnyObject) {
        var controller : SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
        controller.setInitialText("test sina weibo share")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
}