import UIKit

class QuizzesViewController: UIViewController {

    var mockQuizzes: Array<Quiz> = []
    var quizzesCount: Int = 0
    var iteratorCount: Int = 0

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var quizIteratorLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var iteratorButtonView: UIView!

    @IBOutlet weak var prevQuizButton: UIButton!
    @IBOutlet weak var nextQuizButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.initialQuizViewSetup()
    }

    override open var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    @IBAction func dismissController(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func renderNextQuiz(_ sender: Any) {
        self.iteratorCount += 1
        self.setQuizItem(quiz: mockQuizzes[self.iteratorCount])
    }

    @IBAction func renderPrevQuiz(_ sender: Any) {
        if iteratorCount != 0 {
            self.iteratorCount -= 1
            self.setQuizItem(quiz: mockQuizzes[self.iteratorCount])
        } else {

        }

    }

    func renderButtonStates() {
        switch (iteratorCount) {
        case 0:
            self.prevQuizButton.isUserInteractionEnabled = false
            self.prevQuizButton.setTitleColor(Colors.HalfBlack, for: .normal)
            self.nextQuizButton.isUserInteractionEnabled = true
        case quizzesCount - 1:
            self.nextQuizButton.isUserInteractionEnabled = false
            self.prevQuizButton.isUserInteractionEnabled = true
            self.prevQuizButton.setTitleColor(Colors.White, for: .normal)
        default:
            self.nextQuizButton.isUserInteractionEnabled = true
            self.prevQuizButton.isUserInteractionEnabled = true
            self.prevQuizButton.setTitleColor(Colors.White, for: .normal)
            
        }
    }

    func getCurrentQuizCount() -> String {
        self.renderButtonStates()
        return "\(self.iteratorCount + 1) / \(self.quizzesCount)"
    }

    func initialQuizViewSetup() {
        self.bgView.addBackgroundGradientLayer(self.bgView, subView: self.bgView, colorTop: Colors.Purple, colorBottom: Colors.Blue)
        _ = self.iteratorButtonView.applyCornerRadius(self.iteratorButtonView, cornerRadius: self.iteratorButtonView.frame.size.height / 8, borderColor: Colors.Transparent)

        self.quizzesCount = self.mockQuizzes.count
        self.setQuizItem(quiz: mockQuizzes[self.iteratorCount])
    }

    func setQuizItem(quiz: Quiz) {
        questionLabel.text = quiz.question
        quizIteratorLabel.text = getCurrentQuizCount()
    }
}
