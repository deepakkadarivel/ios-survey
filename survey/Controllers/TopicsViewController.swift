import UIKit

let cellIdentifier = "TopicsCell"

class TopicsViewController: UIViewController {

    var mockTopics: Array<Topic> = []

    @IBOutlet weak var topicsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mockTopics = getTopics()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.tintColor = UIColor(red: 0.25, green: 0.36, blue: 0.88, alpha: 1)
        self.navigationController!.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "comfortaa-regular", size: 15)!, NSForegroundColorAttributeName: UIColor(red: 0.25, green: 0.36, blue: 0.88, alpha: 1)]
        self.navigationController?.navigationBar.topItem!.title = "Survey"
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
        if (self.mockTopics[indexPath.row].subtopics?.count)! > 0 {
            NavigationUtil.gotoSubTopicsScreen(vc: self, subtopics: mockTopics[indexPath.row].subtopics!, viewTitle: mockTopics[indexPath.row].name!)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: self.view.frame.size.width, height: 100)
    }
}
