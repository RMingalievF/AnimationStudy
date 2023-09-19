//
//  Animation.swift
//  AnimationStudy
//
//  Created by Руслан Мингалиев on 19.09.2023.
//

struct Animation {
    
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        animation: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f",duration))
        delay: \(String(format: "%.02f",delay))
        """
    }
    
    
    static func getAnimation() -> Animation {
        Animation(
            name: AnimationDataStore.shared.animation.randomElement()?.rawValue ?? "slideLeft",
            curve: AnimationDataStore.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.9...1.5),
            delay: 0.5
        )
    }
}
