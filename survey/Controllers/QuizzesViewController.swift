import UIKit

class QuizzesViewController: UIViewController {

    var mockQuizzes: Array<Quiz> = []
    var quizzesCount: Int = 0
    var iteratorCount: Int = 0

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var quizIteratorLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var iteratorButtonView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bgView.addBackgroundGradientLayer(self.bgView, subView: self.bgView, colorTop: Colors.Purple, colorBottom: Colors.Blue)
        _ = self.iteratorButtonView.applyCornerRadius(self.iteratorButtonView, cornerRadius: self.iteratorButtonView.frame.size.height / 8, borderColor: Colors.Transparent)

        print(mockQuizzes)
        self.setQuizItem(quiz: mockQuizzes[self.iteratorCount])
    }
    
    override open var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    @IBAction func dismissController(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    func getCurrentQuizCount() -> String {
        return "\(self.iteratorCount) / \(self.quizzesCount)"
    }

    func setQuizItem(quiz: Quiz) {
        self.iteratorCount += 1
        self.quizzesCount = self.mockQuizzes.count
        questionLabel.text = quiz.question
        quizIteratorLabel.text = getCurrentQuizCount()
    }
}
