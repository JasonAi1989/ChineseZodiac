//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by jason on 15/8/30.
//  Copyright (c) 2015年 JasonAi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var year: UITextField!
    @IBOutlet weak var zodiacImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateZodiac(sender: AnyObject){
        println(year.text)
        
        var inputYear = year.text.toInt()
        var basicYear = inputYear! % 12 - 3
        if basicYear < 1
        {
            basicYear += 12
        }
        
        var zodiacImageName = "\(basicYear)"
        println("zodiacImageName:\(zodiacImageName)")

        zodiacImage.image = UIImage(named: zodiacImageName)
    }

}

