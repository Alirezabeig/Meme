//
//  ViewController.swift
//  Meme
//
//  Created by Alireza on 8/16/21.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    @IBOutlet var labels : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        
        
        let button = UIButton()
        button.frame = CGRect(x:150, y:250, width:60, height:60)
        button.setTitle("Increase", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.increament), for: UIControl.Event.touchUpInside)
        
        
        let buttondecreament = UIButton()
        buttondecreament.frame = CGRect(x: 150, y: 200, width: 80, height: 80)
        buttondecreament.setTitle("Decrease", for: .normal)
        buttondecreament.setTitleColor(UIColor.green, for: .normal)
        view.addSubview(buttondecreament)
        
        buttondecreament.addTarget(self, action: #selector(ViewController.Decremeant), for: UIControl.Event.touchUpInside)
        
        
        
        
    }

    @objc func increament(){
        print("\(self.count)")
        self.count % 2 == 0 ? (self.view.backgroundColor = UIColor.green) : (self.view.backgroundColor = UIColor.red)
        self.count += 1
        self.labels.text = "\(self.count)"
        
        
    }
    
    @objc func Decremeant() {
        self.count -= 1
        self.labels.text = "\(self.count)"
        self.view.backgroundColor = UIColor.blue
        
    }
    
}

