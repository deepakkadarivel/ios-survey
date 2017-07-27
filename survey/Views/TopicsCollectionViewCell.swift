import UIKit

class TopicsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var topicImg: UIImageView!
    @IBOutlet weak var topicLabel: UILabel!

    func set(topic: Topic) {
        topicLabel.text = topic.name
    }
}
