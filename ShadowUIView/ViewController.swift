//
//  ViewController.swift
//  ShadowUIView
//
//  Created by VicktorManuel on 7/29/18.
//  Copyright © 2018 VicktorManuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rect: ShadowRectUIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //Color gradiant
        rect.setArrayColoursGradient = [UIColor.black.cgColor,UIColor.blue.cgColor]
        //Locations for radiends
        rect.setLocations = [0,1]
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

