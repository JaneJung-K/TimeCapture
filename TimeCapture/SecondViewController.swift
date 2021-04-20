//
//  SecondViewController.swift
//  TimeCapture
//
//  Created by 렌트닷컴 on 2021/04/19.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    var result : String? 
    
    @IBOutlet weak var uiResult: UILabel!
    
    @IBAction func didTapAction(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    uiResult.text = result
    
    print("Second : viewDidLoad")
}

override func viewWillAppear(_ animated: Bool) {
    print("Second : viewWillAppear")
    self.navigationController?.isNavigationBarHidden = false
}

override func viewDidAppear(_ animated: Bool) {
    print("Second : viewDidAppear")
}

override func viewWillDisappear(_ animated: Bool) {
    print("Second : viewWillDisappear")
}

override func viewDidDisappear(_ animated: Bool) {
    print("Second : viewDidDisappear")
}
}
