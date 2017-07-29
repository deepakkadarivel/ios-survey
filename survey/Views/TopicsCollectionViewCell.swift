import UIKit

class TopicsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var topicImg: UIImageView!
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var topicView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        _ = self.topicView.applyCornerRadius(self.topicView, cornerRadius: self.topicView.frame.size.height / 20, borderColor: Colors.Transparent)
    }

    func set(topic: Topic) {
        topicLabel.text = topic.name
        topicImg.image = UIImage(named: topic.image!)
    }
}
