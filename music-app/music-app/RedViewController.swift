//
//  RedViewController.swift
//  music-app
//
//  Created by COTEMIG on 03/06/25.
//

import UIKit

class RedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ChangeRed(_ sender: Any) {
        self.view.backgroundColor = UIColor(displayP3Red: 1, green: 0, blue: 0, alpha: 1)
        var counter = 0.0
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true){
            timer in
            counter += 0.2
            guard counter < 1 else {return timer.invalidate()}
            let alpha = 1 - counter
            let color = UIColor(displayP3Red: 1, green: 0, blue: 0, alpha: alpha)
            self.view.backgroundColor = color
        }
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
