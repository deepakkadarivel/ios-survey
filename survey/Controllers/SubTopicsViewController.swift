import UIKit


class SubTopicsViewController: UIViewController {

var mockSubTopics: Array<SubTopic> = []
    var viewTitle: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension SubTopicsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.mockSubTopics.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SubTopicsCell", for: indexPath) as! SubTopicsCollectionViewCell
        cell.set(subtopic: mockSubTopics[indexPath.item])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if (self.mockSubTopics[indexPath.row].quizzes?.count)! > 0 {
            NavigationUtil.gotoQuizzesScreen(vc: self, quizzes: mockSubTopics[indexPath.row].quizzes!)
        }
    }
}
