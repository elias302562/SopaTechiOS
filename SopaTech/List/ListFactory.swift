import UIKit

enum ListFactory {
    static func make() -> UIViewController {
        let service = ListService()
        let coordinator = ListCoordinator()
        let presenter = ListPresenter(coordinator: coordinator)
        let interactor = ListInteractor(service: service, presenter: presenter)
        let viewController = ListViewController(interactor: interactor)

        coordinator.viewController = viewController
        presenter.viewController = viewController

        return viewController
    }
}
