import Foundation
import ObjectMapper

class SubTopic: Mappable {
    var id: Int?
    var name: String?
    var quizzes: [Quiz]?
    
    required init?(map: Map) {
        
    }
    
    init(id:Int, name:String, quizzes:[Quiz]){
        self.id = id
        self.name = name
        self.quizzes = quizzes
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        quizzes <- map["quizzes"]
    }
}
