//
//  BirthdayViewModel.swift
//  SimbaBirthdayDemo
//
//  Created by Vinh Tran on 17/9/20.
//  Copyright © 2020 Vinh Tran. All rights reserved.
//

import Foundation
import UIKit
struct BirthdayViewModel {
    // Model
    private var character: Characters = Characters()
    
    public mutating func getNextImage() -> UIImage? {
        let image = UIImage(named: character.getNextImageName())
        return image
    }
    
    func getBirthday(withFormat format: String = "dd-MM-yyyy") -> String? {
        guard let date = character.birthday.date else {return nil}
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: date)
    }
}
