import UIKit

protocol ListCoordinating: AnyObject { }

final class ListCoordinator {
    weak var viewController: UIViewController?
}

// MARK: - ListCoordinating
extension ListCoordinator: ListCoordinating { }
