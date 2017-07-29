import UIKit

class QuizzesViewController: UIViewController {

    var mockQuizzes: Array<Quiz> = []
    var quizzesCount: Int = 0
    var iteratorCount: Int = 0
    var mockOptions: Array<Option> = []

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var quizIteratorLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var iteratorButtonView: UIView!

    @IBOutlet weak var prevQuizButton: UIButton!
    @IBOutlet weak var nextQuizButton: UIButton!
    @IBOutlet weak var optionsView: UIView!
    @IBOutlet weak var optionsTableView: UITableView!
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
        if self.iteratorCount == (self.quizzesCount - 1) {
            print("End of Quiz")
        } else {
            self.iteratorCount += 1
            self.setQuizItem(quiz: mockQuizzes[self.iteratorCount], options: mockQuizzes[self.iteratorCount].options!)
        }
    }

    @IBAction func renderPrevQuiz(_ sender: Any) {
        if iteratorCount != 0 {
            self.iteratorCount -= 1
            self.setQuizItem(quiz: mockQuizzes[self.iteratorCount], options: mockQuizzes[self.iteratorCount].options!)
        } else {

        }

    }

    func renderButtonStates() {
        switch (iteratorCount) {
        case 0:
            self.nextQuizButton.setTitle("Next", for: .normal)
            self.prevQuizButton.isUserInteractionEnabled = false
            self.prevQuizButton.setTitleColor(Colors.HalfWhite, for: .normal)
        case quizzesCount - 1:
            self.nextQuizButton.setTitle("Finish", for: .normal)
            self.prevQuizButton.isUserInteractionEnabled = true
            self.prevQuizButton.setTitleColor(Colors.White, for: .normal)
        default:
            self.nextQuizButton.setTitle("Next", for: .normal)
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
        _ = self.iteratorButtonView.applyCornerRadius(self.iteratorButtonView, cornerRadius: self.iteratorButtonView.frame.size.height / 20, borderColor: Colors.Transparent)
        _ = self.optionsView.applyCornerRadius(self.optionsView, cornerRadius: self.iteratorButtonView.frame.size.height / 20, borderColor: Colors.Transparent)

        self.quizzesCount = self.mockQuizzes.count
        self.setQuizItem(quiz: mockQuizzes[self.iteratorCount], options: mockQuizzes[self.iteratorCount].options!)
    }

    func setQuizItem(quiz: Quiz, options: [Option]) {
        questionLabel.text = quiz.question
        quizIteratorLabel.text = getCurrentQuizCount()
        self.mockOptions = options
        self.optionsTableView.reloadData()
    }
}

extension QuizzesViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.mockOptions.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OptionCell", for: indexPath) as! OptionsTableViewCell
        cell.set(option: self.mockOptions[indexPath.row])
        return cell

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
}
