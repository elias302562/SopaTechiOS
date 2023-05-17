import UIKit

protocol ListDisplaying: AnyObject { }

final class ListViewController: UIViewController {
    let interactor: ListInteracting

    init(interactor: ListInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) { nil }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        interactor.didStartScreen()
    }
}

// MARK: - ListDisplaying
extension ListViewController: ListDisplaying { }
