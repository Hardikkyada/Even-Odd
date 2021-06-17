//
//  Result.swift
//  Even-Odd
//
//  Created by DCS on 14/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Result:UIViewController{
    var re = ""
    var num = 0
    private let myLabel:UILabel = {
        let lab = UILabel()
        lab.text = ""
        lab.textAlignment = .center
        lab.textColor = UIColor.black
        lab.backgroundColor = UIColor.white
        return lab
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "back.jpeg")!)
        view.addSubview(myLabel)
        myLabel.text = "Number "+String(num)+" is "+re
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myLabel.frame = CGRect(x  : 40, y: (view.height/2) - 50 ,width: view.width - 80,height: 60)
    }
}
