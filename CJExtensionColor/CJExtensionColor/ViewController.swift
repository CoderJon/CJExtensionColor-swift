//
//  ViewController.swift
//  CJExtensionColor
//
//  Created by CoderJon on 2017/7/6.
//  Copyright © 2017年 CoderJon. All rights reserved.
//

import UIKit

let fifthView = UIView(frame: CGRect(x: 0, y: 480, width: 200, height: 50))
let startColor = UIColor(r: 255, g: 127, b: 0)
let endColor = UIColor(r: 0, g: 0, b: 0)
let gradientRGB = UIColor.getRGBDelta(startColor, endColor)
let startRGB = startColor.getRGB()
let endRGB = endColor.getRGB()

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstView = UIView(frame: CGRect(x: 0, y: 50, width: 200, height: 50))
        firstView.backgroundColor = UIColor(r: 247, g: 198, b: 68, alpha: 0.5)
        self.view.addSubview(firstView)
        
        let secondView = UIView(frame: CGRect(x: 0, y: 150, width: 200, height: 50))
        secondView.backgroundColor = UIColor(r: 247, g: 198, b: 68)
        self.view.addSubview(secondView)
        
        let thirdView = UIView(frame: CGRect(x: 0, y: 250, width: 200, height: 50))
        thirdView.backgroundColor = UIColor(hex: "#0881f1")
        self.view.addSubview(thirdView)
        
        let fourthView = UIView(frame: CGRect(x: 0, y: 350, width: 200, height: 50))
        fourthView.backgroundColor = UIColor.randomColor()
        self.view.addSubview(fourthView)
        
        let gradientSlider = UISlider(frame: CGRect(x: 0, y: 450, width: 200, height: 10))
        gradientSlider.addTarget(self, action: #selector(sliderEvent(_:)), for: .valueChanged)
        self.view.addSubview(gradientSlider)
        
        fifthView.backgroundColor = startColor
        
        self.view.addSubview(fifthView)
        
    }
}

extension ViewController{
    @objc fileprivate func sliderEvent(_ gradientSlider: UISlider){
        print("---\(gradientSlider.value)")
        
        fifthView.backgroundColor = UIColor(r: startRGB.0 + gradientRGB.0 * CGFloat((gradientSlider.value)), g: startRGB.1 + gradientRGB.1 * CGFloat((gradientSlider.value)), b: startRGB.2 + gradientRGB.2 * CGFloat((gradientSlider.value)))
    }
}


