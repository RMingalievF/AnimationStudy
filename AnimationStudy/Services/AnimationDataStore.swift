//
//  AnimationDataStore.swift
//  AnimationStudy
//
//  Created by Руслан Мингалиев on 19.09.2023.
//

import SpringAnimation


class AnimationDataStore {
    
    static let shared = AnimationDataStore()
    
    let animation = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
