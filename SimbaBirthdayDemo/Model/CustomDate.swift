//
//  CustomDate.swift
//  SimbaBirthdayDemo
//
//  Created by Vinh Tran on 17/9/20.
//  Copyright © 2020 Vinh Tran. All rights reserved.
//

import Foundation

struct CustomDate {
    private (set) var date:Date?
    
    init(day:Int, month:Int, year:Int, hour:Int = 0, minutes:Int = 0, timeZone:TimeZone = .current) {
        
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        dateComponents.timeZone = timeZone
        dateComponents.hour = hour
        dateComponents.minute = minutes
        
        let userCalender = Calendar.current
        date = userCalender.date(from: dateComponents)
        
    }
}
