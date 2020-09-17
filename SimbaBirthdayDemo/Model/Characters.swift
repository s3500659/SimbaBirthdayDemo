//
//  Characters.swift
//  SimbaBirthdayDemo
//
//  Created by Vinh Tran on 17/9/20.
//  Copyright © 2020 Vinh Tran. All rights reserved.
//

import Foundation

struct Characters {
    private var characters:[String] = []
    private var current:Int = 0
    
    let birthday: CustomDate = CustomDate(day: 3, month: 8, year: 2019)
    
    init() {
        populateCharacters()
    }
    
    private mutating func populateCharacters() {
        characters.append("simba_1")
        characters.append("simba_2")
        characters.append("simba_3")
        characters.append("simba_4")
    }
    
    public mutating func getNextImageName() -> String {
        if current == 3 {current = 0}
        else {current += 1}
        return characters[current]
    }
}
