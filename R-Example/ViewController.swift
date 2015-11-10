//
//  ViewController.swift
//  R-Example
//
//  Created by Markus Chmelar on 10/11/15.
//  Copyright © 2015 mexx. All rights reserved.
//

import UIKit
import GUI

class ViewController: UIViewController {
    @IBOutlet weak var containerView: UIView! {
        didSet {
            //
            //  This even crashes with "Could not load NIB in bundle:<mainBundle> with name 'CustomView'"
            //
//            if let customView = GUI.customView()?.instantiateWithOwner(nil, options: nil).first as? UIView {
//                containerView.addSubview(customView)
//            }
        }
    }
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.image = GUI.image()
        }
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

