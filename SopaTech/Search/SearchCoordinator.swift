import UIKit

protocol SearchCoordinating { }

final class SearchCoordinator {
    weak var viewController: UIViewController?
}

extension SearchCoordinator: SearchCoordinating { }
