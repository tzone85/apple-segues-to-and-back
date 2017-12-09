//
//  SecondViewController.swift
//  SeguesTwoPointOh
//
//  Created by Thando Mini on 2017/12/08.
//  Copyright © 2017 Thando Mini. All rights reserved.
//

import UIKit

protocol  CanReceive {
    func dataReceived(data : String)
}

class SecondViewController: UIViewController {
    
    var delegate : CanReceive?
    
    //the data that's going to be passed through from the first view
    var data = ""
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label.text = data
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    
    @IBAction func sendBackButtonPressed(_ sender: Any) {
        //if role of the delegate is nil, then this is not triggered
        delegate?.dataReceived(data: textField.text!)
        
        //dismiss current view and go to the previous one in an animated fashion
        dismiss(animated: true, completion: nil)
    }
    
}
