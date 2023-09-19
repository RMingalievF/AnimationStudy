//
//  ViewController.swift
//  AnimationStudy
//
//  Created by Руслан Мингалиев on 11.12.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    //MARK: - IB Outlets
    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var animationLabel: UILabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
    
    private var animation = Animation.getAnimation()
    
    @IBAction func runButton(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        springView.animation = animation.name
        springView.curve = animation.curve
        springView.force = animation.force
        springView.duration = animation.duration
        springView.delay = animation.delay
        springView.animate()
        
        
        
        animation = Animation.getAnimation()
        sender.setTitle("Run to \(animation.name)", for: .normal)
    }
    
}

