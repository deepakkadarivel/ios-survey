import Foundation
import UIKit
import ObjectMapper

var mockTopics: Array<Topic>?

func getTopics() -> Array<Topic> {
    return readJson(resource: "topic")
}

func readJson(resource: String?) -> Array<Topic> {
    do {
        if let file = Bundle.main.url(forResource: resource, withExtension: "json") {
            let data = try Data(contentsOf: file)
            let json = try JSONSerialization.jsonObject(with: data, options: [])
            if let object = json as? [String: Any] {
                // json is a dictionary
                print("object : \(object)")
            } else if let object = json as? [Any] {
                // json is an array
                mockTopics = Mapper<Topic>().mapArray(JSONArray: object as! [[String : Any]])
            } else {
                print("JSON is invalid")
            }
        } else {
            print("no file")
        }
    } catch {
        print(error.localizedDescription)
    }
    
    return mockTopics!
}
