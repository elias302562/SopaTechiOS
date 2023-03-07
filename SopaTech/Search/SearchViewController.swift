import UIKit

protocol SearchDisplaying: AnyObject { }

final class SearchViewController: UIViewController {
    let interactor: SearchInteracting
    
    init(interactor: SearchInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { nil }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}

extension SearchViewController: SearchDisplaying { }
