protocol ListPresenting: AnyObject { }

final class ListPresenter {
    private let coordinator: ListCoordinating
    weak var viewController: ListDisplaying?

    init(coordinator: ListCoordinating) {
        self.coordinator = coordinator
    }
}

// MARK: - ListPresenting
extension ListPresenter: ListPresenting { }
