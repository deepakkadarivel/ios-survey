import UIKit

class SubTopicsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var subTopicImg: UIImageView!
    @IBOutlet weak var subTopicLabel: UILabel!
    @IBOutlet weak var subTopicView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        _ = self.subTopicView.applyCornerRadius(self.subTopicView, cornerRadius: self.subTopicView.frame.size.height / 20, borderColor: Colors.Transparent)
    }

    func set(subtopic: SubTopic) {
        subTopicLabel.text = subtopic.name
        subTopicImg.image = UIImage(named: subtopic.image!)
    }
}
