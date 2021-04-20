//
//  ViewController.swift
//  TimeCapture
//
//  Created by 렌트닷컴 on 2021/04/19.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var timeLabel: UILabel!
    
    var seconds = 0
    var timer = Timer()
    var timerIsOn = false
    
    @IBAction func startIsPressed(_ sender: UIButton) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (Selector(("updateTimer"))), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func doneIsPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "SecondViewController", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SecondViewController" {
            let secondViewController = segue.destination as! SecondViewController
          //  secondViewController.result = textFieldText
        }
  
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let alert = UIAlertController(title: "Grab Your Time", message: "Welcome to our App", preferredStyle: .alert)
        let action = UIAlertAction(title: "START", style: .default, handler: nil)
                                    
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        // Do any additional setup after loading the view.
        print("First : viewDidLoad")
    }
    
    func updateTimer() {
        
        seconds += 1
        timeLabel.text = "00:00:\(seconds)"
    }
    
    
    
    
    
    
    
    
    

    override func viewWillAppear(_ animated: Bool) {
        print("First : viewWillAppear")
        self.navigationController?.isNavigationBarHidden = true
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


