//
//  ViewController.swift
//  Day 1 - LongPressGesture
//
//  Created by Prashant Gaikwad on 4/3/18.
//  Copyright © 2018 Left Right Mind. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
  @IBOutlet weak var viewLong: UIView!
  
  var longGesture = UILongPressGestureRecognizer()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    // LongPress Gesture
    longGesture = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longPress(_:)))
    longGesture.minimumPressDuration = 1
    viewLong.addGestureRecognizer(longGesture)
    
    
  }

  
  @objc func longPress(_ sender: UILongPressGestureRecognizer) {
    let alertC = UIAlertController(title: "Long Press", message: "Long press gesture called when you press on view of 1 second duration.", preferredStyle: UIAlertControllerStyle.alert)
    let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (alert) in
    }
    alertC.addAction(ok)
    self.present(alertC, animated: true, completion: nil)
  }
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

