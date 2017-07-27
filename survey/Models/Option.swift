import Foundation
import ObjectMapper

class Option: Mappable {
    var id: Int?
    var value: String?
    
    required init?(map: Map) {}
    
    init(id:Int, value:String){
        self.id = id
        self.value = value
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        value <- map["value"]
    }
}
