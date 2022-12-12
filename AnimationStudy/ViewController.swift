//
//  ViewController.swift
//  AnimationStudy
//
//  Created by Руслан Мингалиев on 11.12.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    
    @IBOutlet weak var springView: SpringView!
    
    @IBOutlet weak var button: UIButton!
    

    @IBAction func runButton(_ sender: UIButton) {
        randomAnimation()

        
    }
    
    func randomAnimation() {
        var nameAnimation: [String] = []
        
        for animation in AnimationPreset.allCases{
            nameAnimation.append("\(animation)")
        }
        let animaation = nameAnimation.shuffled()
        springView.animation = animaation[0]
        springView.animate()
        
        
        button.setTitle("Run to \(animaation[0])", for: .normal)
    }
}

