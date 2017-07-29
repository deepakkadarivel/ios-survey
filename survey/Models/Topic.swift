import Foundation
import ObjectMapper

class Topic: Mappable {
    var id: Int?
    var image: String?
    var name: String?
    var subtopics: [SubTopic]?

    required init?(map: Map) {
        
    }
    
    init(id:Int, image:String, name:String, subtopics:[SubTopic]){
        self.id = id
        self.image = image
        self.name = name
        self.subtopics = subtopics
    }

    func mapping(map: Map) {
        id <- map["id"]
        image <- map["image"]
        name <- map["name"]
        subtopics <- map["subtopics"]
    }
}
