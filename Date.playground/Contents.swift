import Foundation

let calender = Calendar(identifier: .gregorian)

var startDate : Date = DateComponents(calendar: Calendar(identifier: .gregorian), year: 1901, month: 1, day: 1, hour: 5).date!

let endDate : Date = DateComponents(calendar: Calendar(identifier: .gregorian), year: 2000, month: 12, day: 31, hour: 5).date!


var dayOffSet = DateComponents()

dayOffSet.day = 1

var counter = 0

while startDate < endDate {

    if (calender.component(.weekday, from: startDate) == 1) && (calender.component(.day, from: startDate) == 1) {
        counter += 1
        dayOffSet.day = 7
    }
    startDate = calender.date(byAdding: dayOffSet, to: startDate)!
}

print(counter)
