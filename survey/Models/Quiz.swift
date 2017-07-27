import Foundation
import ObjectMapper

class Quiz: Mappable {
    var id: Int?
    var answer: Int?
    var options: [Option]?
    var question: String?
    
    required init?(map: Map) {}
    
    init(id:Int, answer:Int, options:[Option], question:String){
        self.id = id
        self.answer = answer
        self.options = options
        self.question = question
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        answer <- map["answer"]
        options <- map["options"]
        question <- map["question"]
    }
}
