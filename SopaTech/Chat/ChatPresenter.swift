protocol ChatPresenting {
    func presentProfile()
    func presentMessages()
}

final class ChatPresenter {
    let coordinator: ChatCoordinating
    weak var displayer: ChatViewDisplaying?
    
    init(coordinator: ChatCoordinating) {
        self.coordinator = coordinator
    }
}

extension ChatPresenter: ChatPresenting {
    func presentProfile() {
        coordinator.openProfile()
    }
    
    func presentMessages() {
        displayer?.showChatData()
    }
}
