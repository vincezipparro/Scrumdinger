import SwiftUI

struct DailyScrumModel {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
}

extension DailyScrumModel{
    static var data: [DailyScrumModel]{
        [
            DailyScrumModel(title: "Design", attendees: ["Cathy", "Daisy", "Vince"], lengthInMinutes: 10, color: Color("Design")),
            DailyScrumModel(title: "App Dev", attendees: ["Jeff", "Todd", "Kim"], lengthInMinutes: 5, color: Color("App Dev")),
            DailyScrumModel(title: "Web Dev", attendees: ["Jim", "John", "Fred"], lengthInMinutes: 10, color: Color("Design"))
        ]
    }
}
