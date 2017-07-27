import UIKit

let cellIdentifier = "TopicsCell"

class TopicsViewController: UIViewController {

    var mockTopics: Array<Topic> = []

    @IBOutlet weak var topicsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mockTopics = getTopics()
    }

}

extension TopicsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.mockTopics.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! TopicsCollectionViewCell
        cell.set(topic: mockTopics[indexPath.item])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        NavigationUtil.gotoSubTopicsScreen(vc: self, subtopics: mockTopics[indexPath.row].subtopics!)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: self.view.frame.size.width, height: 100)
    }
}
