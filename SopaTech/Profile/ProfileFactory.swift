import UIKit

protocol ProfileFactoring {
    func makeProfile() -> UIViewController
}

struct ProfileFactory: ProfileFactoring {
    func makeProfile() -> UIViewController {
        return UIViewController() //mock
    }
}
