import Foundation
import ObjectMapper

class SubTopic: Mappable {
    var id: Int?
    var image: String?
    var name: String?
    var quizzes: [Quiz]?

    required init?(map: Map) {

    }

    init(id: Int, image: String, name: String, quizzes: [Quiz]) {
        self.id = id
        self.image = image
        self.name = name
        self.quizzes = quizzes
    }

    func mapping(map: Map) {
        id <- map["id"]
        image <- map["image"]
        name <- map["name"]
        quizzes <- map["quizzes"]
    }
}
