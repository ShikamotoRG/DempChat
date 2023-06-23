//
//  Date+Helpers.swift
//  Chat
//
//  Created by Rafael on 12/06/2023.
//

import Foundation

extension Date {
    
    func descriptiveString(dateStyle: DateFormatter.Style = .short) -> String {
        
        let formater = DateFormatter()
        formater.dateStyle = dateStyle
        
        let daysBetween = self.daysBetween(date: Date())
        
        if daysBetween == 0 {
            return "Today"
        } else if daysBetween == 1 {
            return "Yesterday"
        } else if daysBetween < 5 {
            let weekdayIndex = Calendar.current.component(.weekday, from: self) - 1
            return formater.weekdaySymbols[weekdayIndex]
        }
        return formater.string(from: self)
    }
    
    func daysBetween(date: Date) -> Int {
        let calentar = Calendar.current
        let date1 = calentar.startOfDay(for: self)
        let date2 = calentar.startOfDay(for: date)
        if let daysBetween = calentar.dateComponents([.day], from: date1, to: date2).day {
            return daysBetween
        }
        return 0
    }
}
