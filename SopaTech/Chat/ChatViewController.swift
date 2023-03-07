import UIKit

protocol ChatViewDisplaying: AnyObject {
    func showChatData()
}

final class ChatViewController: UIViewController {
    let interactor: ChatInteracting
    
    init(interactor: ChatInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { nil }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        interactor.getChatMessages()
    }
}

extension ChatViewController: ChatViewDisplaying {
    func showChatData() {

    }
}
