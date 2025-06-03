//
//  ViewController.swift
//  music-app
//
//  Created by COTEMIG on 03/06/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func colorTransition(_ sender: Any) {
        view.backgroundColor = .black
        UIView.animate(withDuration: 5, animations: {
            self.view.backgroundColor = .white
        }
        )
    }
}
