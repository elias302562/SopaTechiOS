import UIKit

protocol ChatCoordinating {
    func openProfile()
    func close()
}

final class ChatCoordinator {
    weak var viewController: UIViewController?
    private let profileFactory: ProfileFactoring
    
    init(profileFactory: ProfileFactoring) {
        self.profileFactory = profileFactory
    }
}

extension ChatCoordinator: ChatCoordinating {
    func openProfile() {
        let profileViewController = profileFactory.makeProfile()
        
        viewController?.present(profileViewController, animated: true)
    }
    
    func close() {
        viewController?.navigationController?.popViewController(animated: true)
    }
}
