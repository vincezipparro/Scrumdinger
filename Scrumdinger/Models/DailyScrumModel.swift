import SwiftUI

struct DailyScrumModel: Identifiable {
    var id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, color: Color){
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.color = color
    }
}

extension DailyScrumModel{
    static var data: [DailyScrumModel]{
        [
            DailyScrumModel(title: "Design", attendees: ["Cathy", "Daisy", "Vince", "Allie"], lengthInMinutes: 10, color: Color("Design")),
            DailyScrumModel(title: "App Design", attendees: ["Jeff", "Todd", "Kim"], lengthInMinutes: 5, color: Color("App Dev")),
            DailyScrumModel(title: "Web Dev", attendees: ["Jim", "John", "Fred"], lengthInMinutes: 10, color: Color("Web Dev"))
        ]
    }
}


extension DailyScrumModel {
    struct Data{
        var title : String = ""
        var attendees: [String] = []
        var lengthInMinutes: Double = 5.0
        var color: Color = .random
    }
    
    var data: Data {
       return Data(title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), color: color)
    }
    
    mutating func update(from data: Data) {
        title = data.title
        attendees = data.attendees
        lengthInMinutes = Int(data.lengthInMinutes)
        color = data.color
    }
}
