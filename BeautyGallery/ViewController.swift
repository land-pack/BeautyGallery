//
//  ViewController.swift
//  BeautyGallery
//
//  Created by 王钊 on 15/6/13.
//  Copyright (c) 2015年 王钊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var beautyPicker: UIPickerView!
    
    let beauties = ["范冰冰", "李冰冰", "王菲", "杨幂", "周迅"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        beautyPicker.delegate = self
        beautyPicker.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "GoToGallery") {
            let index = beautyPicker.selectedRowInComponent(0)
            var imgName: String?
            switch index {
            case 0:
                imgName = "fanbingbing"
                break
            case 1:
                imgName = "libingbing"
                break
            case 2:
                imgName = "wangfei"
                break
            case 3:
                imgName = "yangmi"
                break
            case 4:
                imgName = "zhouxun"
                break
            default:
                imgName = nil
                break
            }
            
            var destinationVC = segue.destinationViewController as! GalleryViewController
            destinationVC.imgName = imgName
            
        }
        
    }
    
    // Unwind Segue
    @IBAction func close(segue: UIStoryboardSegue) {
        // print("closed")
    }


}

