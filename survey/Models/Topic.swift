import Foundation
import ObjectMapper

class Topic: Mappable {
    var id: Int?
    var name: String?
    var subtopics: [SubTopic]?

    required init?(map: Map) {
        
    }
    
    init(id:Int, name:String, subtopics:[SubTopic]){
        self.id = id
        self.name = name
        self.subtopics = subtopics
    }

    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        subtopics <- map["subtopics"]
    }
}
