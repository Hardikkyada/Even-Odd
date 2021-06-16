//
//  ViewController.swift
//  first
//
//  Created by DCS on 09/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    private let myButton:UIButton = {
        let btn = UIButton()
        btn.setTitle("Click", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = UIColor.init(red: 0, green: 255, blue: 0, alpha: 0.3)
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(xyz), for: .touchUpInside)
        return btn
    }()
    
    private let myTextField:UITextField={
        let text = UITextField()
        text.placeholder = "Enter Number"
        text.textAlignment = .center
        text.borderStyle = .roundedRect
        text.textColor = .black
        //text.backgroundColor = UIColor.gray
        return text
    }()
    
    @objc private func xyz(){
        print("Click...!")
        guard let num = Int(myTextField.text!) else {
            let alert = UIAlertController(title: "Oops!...", message: "Enter the Valid Data Try Again", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
            
            DispatchQueue.main.async {
                self.present(alert,animated: true,completion: nil)
            }
            return
        }
        let result = Result()
        result.num = num
        if num % 2 == 0{
            result.re = "Even"
        }else{
            result.re = "Odd"
        }
        navigationController?.pushViewController(result, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //view.backgroundColor = UIColor.init(red: 255, green: 255, blue: 0, alpha: 0.1)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "back.jpeg")!)
        view.addSubview(myButton)
        view.addSubview(myTextField)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myTextField.frame = CGRect(x  : 40, y: (view.height/2) - 50 ,width: view.width - 80,height: 60)
        myButton.frame = CGRect(x  : 40, y: (myTextField.bottom)+20,width: view.width - 80,height: 60)
    }
}

