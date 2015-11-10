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
        return R.image.icon256
    }
    
    public static func customView() -> UINib? {
        return R.nib.customView.instance
    }
}