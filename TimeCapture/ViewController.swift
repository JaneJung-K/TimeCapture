//
//  ViewController.swift
//  TimeCapture
//
//  Created by 렌트닷컴 on 2021/04/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiTextField: UITextField!
    
    @IBAction func didTapAction(_ sender: Any) {
       
        var data : String = uiTextField.text!
        
        let secondViewController = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("First : viewDidLoad")
    }

    override func viewWillAppear(_ animated: Bool) {
        print("First : viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("First : viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("First : viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("First : viewDidDisappear")
    }

}

