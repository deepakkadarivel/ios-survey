import Foundation
import UIKit

class NavigationUtil {

//    static func gotoInitialVC(_ vc: UIViewController) {
//        let storyboard: UIStoryboard = UIStoryboard(name: "Initial", bundle: nil)
//        let destination = storyboard.instantiateViewController(withIdentifier: "InitialVC") as! InitialViewController
//        destination.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
//        vc.present(destination, animated: true, completion: nil)
//    }
//
//    static func gotoSignup(_ vc: UIViewController) {
//        let storyboard: UIStoryboard = UIStoryboard(name: "Signup", bundle: nil)
//        let destination = storyboard.instantiateViewController(withIdentifier: "SignupVC") as! SignupViewController
//        destination.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
//        vc.present(destination, animated: true, completion: nil)
//    }
//
//    static func gotoHomeScreen() {
//        let storyBoard = UIStoryboard(name: "TabBar", bundle: nil)
//        let tabBarVC = storyBoard.instantiateViewController(withIdentifier: "TabBarVC") as! UITabBarController
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        appDelegate.window?.rootViewController = tabBarVC
//    }

    static func gotoSubTopicsScreen(vc: UIViewController, subtopics: [SubTopic]) {
        let storyboard: UIStoryboard = UIStoryboard(name: "SubTopics", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "SubTopicsVC") as! SubTopicsViewController
        destination.mockSubTopics = subtopics
        vc.navigationController!.pushViewController(destination, animated: true)
    }

    static func gotoQuizzesScreen(vc: UIViewController, quizzes: [Quiz]) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Quizzes", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "QuizzesVC") as! QuizzesViewController
        destination.mockQuizzes = quizzes
//        let navigationController = UINavigationController(rootViewController: destination)
        vc.present(destination, animated: true, completion: nil)
    }

//    static func gotoDestinationDetail(_ vc: UIViewController, destinationValue: Destination) {
//        let storyboard: UIStoryboard = UIStoryboard(name: "DestinationDetail", bundle: nil)
//        let destination = storyboard.instantiateViewController(withIdentifier: "DestinationDetailVC") as! DestinationDetailViewController
//        destination.destination = destinationValue
//        destination.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
//        let navigationController = UINavigationController(rootViewController: destination)
//        vc.present(navigationController, animated: true, completion: nil)
//    }
//
//    static func gotoStoryDetail(_ vc: UIViewController, storyValue: Story) {
//        let storyboard: UIStoryboard = UIStoryboard(name: "StoriesDetail", bundle: nil)
//        let destination = storyboard.instantiateViewController(withIdentifier: "StoryDetailVC") as! StoryDetailViewController
//        destination.story = storyValue
//        destination.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
//        let navigationController = UINavigationController(rootViewController: destination)
//        vc.present(navigationController, animated: true, completion: nil)
//    }

}