//
//  ViewController.swift
//  bai-1
//
//  Created by Apple on 5/11/16.
//  Copyright © 2016 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    @IBAction func btn1a(sender: AnyObject) {
        lbl.text = ""
        lbl.text = "HELLO WORLD"
    }
    @IBAction func btn1b(sender: AnyObject) {
        lbl.text = ""
        let txt = NSMutableAttributedString.init(string: "HELLO WORLD")
        
        txt.setAttributes([NSFontAttributeName: UIFont.systemFontOfSize(20), NSForegroundColorAttributeName: UIColor.redColor()], range: NSMakeRange(0,5))// bắt đầu từ vị trí số 0, kéo dài 5 kí tự
        
        txt.setAttributes([NSFontAttributeName: UIFont.systemFontOfSize(10), NSForegroundColorAttributeName: UIColor.blueColor()], range: NSMakeRange(6, 5))// tương tự
        lbl.attributedText = txt
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

