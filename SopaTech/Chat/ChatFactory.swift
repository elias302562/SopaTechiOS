import UIKit

protocol ChatFactoring {
    func makeChat(analytics: PPAnalytics) -> UIViewController
}

struct ChatFactory: ChatFactoring {
    func makeChat(analytics: PPAnalytics) -> UIViewController {
        let coordinator = ChatCoordinator(profileFactory: ProfileFactory())
        let presenter = ChatPresenter(coordinator: coordinator)
        let service = ChatService()
        let interactor = ChatInteractor(presenter: presenter, service: service, analytics: analytics)
        let viewController = ChatViewController(interactor: interactor)
        
        presenter.displayer = viewController
        
        return viewController
    }
}
