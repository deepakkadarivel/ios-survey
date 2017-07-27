import UIKit

class SubTopicsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var subTopicImg: UIImageView!
    @IBOutlet weak var subTopicLabel: UILabel!

    func set(subtopic: SubTopic) {
        subTopicLabel.text = subtopic.name
    }
}