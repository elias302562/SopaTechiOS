import UIKit

protocol SearchFactoring {
    func make() -> UIViewController
}

struct SearchFactory: SearchFactoring {
    func make() -> UIViewController {
        let coordinator = SearchCoordinator()
        let presenter = SearchPresenter(coordinator: coordinator)
        let interactor = SearchInteractor(presenter: presenter)
        let viewController = SearchViewController(interactor: interactor)
        
        presenter.displayer = viewController
        
        return viewController
    }
}
