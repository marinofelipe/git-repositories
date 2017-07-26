//
//  WKInterfaceImage.swift
//  desafio-ios
//
//  Created by Felipe Marino on 26/07/17.
//  Copyright © 2017 Felipe Marino. All rights reserved.
//

import WatchKit

// MARK: - WKInterfaceImage Extension
public extension WKInterfaceImage {
    
    /// Animates `imageNamed` animation sequence in `animationRange` for `duration` until stops.
    /// Renders default system activity indicator if no parameter given.
    public func startActivityIndicator(imageNamed imageName: String = "Activity",
                                       animationRange: NSRange = NSMakeRange(0, 30),
                                       duration: TimeInterval = 1) {
        setImageNamed(imageName)
        startAnimatingWithImages(in: animationRange, duration: duration, repeatCount: 0)
    }
    
    /// Stops activity indication animation.
    public func stopActivityIndicator() {
        stopAnimating()
        setImage(nil)
    }
}
