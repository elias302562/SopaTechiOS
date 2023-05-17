import UIKit

protocol SearchCoordinating {
    func openSearchList(query: String)
}

final class SearchCoordinator {
    weak var viewController: UIViewController?
}

extension SearchCoordinator: SearchCoordinating {
    func openSearchList(query: String) {
        let listFactory = ListFactory()
        let listViewController = listFactory.make()
        
        viewController?.present(listViewController, animated: true)
    }
}
