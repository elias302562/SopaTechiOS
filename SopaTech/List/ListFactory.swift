import UIKit

struct ListFactory {
    func make(query: String) -> UIViewController {
        let service = ListService()
        let coordinator = ListCoordinator()
        let presenter = ListPresenter(coordinator: coordinator)
        let interactor = ListInteractor(
            service: service,
            presenter: presenter,
            query: query
        )
        let viewController = ListViewController(interactor: interactor)

        coordinator.viewController = viewController
        presenter.viewController = viewController

        return viewController
    }
}
