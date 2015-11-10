//
//  GUI.swift
//  R-Example
//
//  Created by Markus Chmelar on 10/11/15.
//  Copyright © 2015 mexx. All rights reserved.
//

import Foundation

public class GUI {
    public static func image() -> UIImage? {
        // 
        //  Problem: This needs to load the image from the GUI bundle instead of `nil` (mainBundle)
        //
        return R.image.icon256
    }
    
    public static func customView() -> UINib? {
        //
        //  Problem: This needs to load the image from the GUI bundle instead of `nil` (mainBundle)
        //
        return R.nib.customView.instance
    }
}