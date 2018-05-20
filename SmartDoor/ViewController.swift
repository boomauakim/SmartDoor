//
//  ViewController.swift
//  SmartDoor
//
//  Created by Boomauakim on 18/5/2561 BE.
//  Copyright © 2561 Boomauakim. All rights reserved.
//

import UIKit
import os.log

class ViewController: UIViewController {

  // MARK: Properties
  var lockStatus = false
  @IBOutlet weak var lockButton: UIButton!
  
  // MARK: Methods
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func alertDialog(message: String) {
    let alert = UIAlertController(title: "", message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default))
    self.present(alert, animated: true, completion: nil)
  }

  //MARK: Button Actions
  @IBAction func openButtonTapped(_ sender: UIButton) {
    alertDialog(message: "THE DOOR IS OPEN !")
  }
  
  @IBAction func lockButtonTapped(_ sender: UIButton) {
    // Lock
    if lockStatus == false {
      lockStatus = true
      lockButton.setTitle("UNLOCK", for: .normal)
      alertDialog(message: "THE DOOR IS LOCKED !")
    }
    // Unlock
    else {
      lockStatus = false
      lockButton.setTitle("LOCK", for: .normal)
      alertDialog(message: "THE DOOR IS UNLOCKED !")
    }
  }
  
  @IBAction func addButtonTapped(_ sender: UIButton) {
    alertDialog(message: "PLEASE TOUCH RFID TAG !")
  }
  
  @IBAction func removeButtonTapped(_ sender: UIButton) {
    alertDialog(message: "PLEASE TOUCH RFID TAG !")
  }
}

