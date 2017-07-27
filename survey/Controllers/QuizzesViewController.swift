import UIKit

class QuizzesViewController: UIViewController {

    var mockQuizzes: Array<Quiz> = []

    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bgView.addBackgroundGradientLayer(self.bgView, subView: self.bgView, colorTop: Colors.Purple, colorBottom: Colors.Blue)

        print(mockQuizzes)
    }
    
    override open var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    @IBAction func dismissController(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
