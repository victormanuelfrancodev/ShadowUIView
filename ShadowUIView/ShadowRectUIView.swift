//
//  ShadowRectUIView.swift
//  ShadowUIView
//
//  Created by VicktorManuel on 7/29/18.
//  Copyright © 2018 VicktorManuel. All rights reserved.
//

import UIKit
@IBDesignable
class ShadowRectUIView: UIView {

    var shadowColor:UIColor?
  //  var shadowColor:NSShadow! = NSShadow()
    var strokeWidt:CGFloat?
    let colorSpacer = CGColorSpaceCreateDeviceRGB()
    var arrayColoursGradient = [UIColor.red.cgColor,UIColor.blue.cgColor] as CFArray
    var locations = [0,1] as [CGFloat]
    var shad = NSShadow()
    var radiusView:CGFloat?
    var opacityView:CGFloat = 0.0

    
    @IBInspectable var setShadowColor:UIColor = UIColor.black{
        didSet{
            shadowColor = setShadowColor
        }
        
    }
    
    @IBInspectable var setLocations = [0] as [CGFloat]{
        didSet{
            locations = setLocations as [CGFloat]
        }
    }
    
    @IBInspectable var setArrayColoursGradient = [UIColor.red.cgColor,UIColor.blue.cgColor]{
        didSet{
            arrayColoursGradient = setArrayColoursGradient as CFArray
        }
    }
    
    @IBInspectable var setRadiusView:CGFloat = 1.0{
        didSet{
            radiusView = setRadiusView
        }
       
    }
    
    @IBInspectable var setOpacityView:CGFloat = 1.0{
        didSet{
            opacityView = setOpacityView
        }
        
    }
    
    
    
    override func draw(_ rect: CGRect) {
      
        
        ShadowUIView.drawCanvas1(frame: rect, shadowColor: shadowColor!, gradient: (CGGradient(colorsSpace: colorSpacer, colors: arrayColoursGradient, locations: locations))!, radiusView: radiusView!, opacityView: opacityView)
        
       
    }
    
    

}
