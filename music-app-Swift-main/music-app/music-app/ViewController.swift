//
//  ViewController.swift
//  music-app
//
//  Created by COTEMIG on 03/06/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var musicTime: UILabel!
    @IBOutlet weak var musicTotDuration: UILabel!
    @IBOutlet weak var sliderMusic: UISlider!
    @IBOutlet weak var btnPlay: UIButton!
    var isPlay: Bool! = false
    var timer: Timer!
    
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
    @IBAction func PlayBtn(_ sender: Any) {
        
        isPlay.toggle()
        
        if isPlay{
            btnPlay
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true){ timer in
                self.sliderMusic.value += 0.1
                
                if (self.sliderMusic.value == 3){
                    self.sliderMusic.value = 0
                }
            }
            
        }
        else{
            timer.invalidate()
        }
    }
        
    }
    
    
    

