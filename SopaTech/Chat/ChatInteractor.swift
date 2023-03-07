protocol ChatInteracting {
    func userTappedHeader()
    func getChatMessages()
}

final class ChatInteractor {
    private let presenter: ChatPresenting
    private let service: ChatService
    private let analytics: PPAnalytics
    
    init(presenter: ChatPresenting, service: ChatService, analytics: PPAnalytics) {
        self.presenter = presenter
        self.analytics = analytics
        self.service = service
    }
}

extension ChatInteractor: ChatInteracting {
    func getChatMessages() {
        service.getMessages { messages in
            presenter.presentMessages(/*messages*/)
        }
    }
    
    func userTappedHeader() {
        analytics.logEvent()
        presenter.presentProfile()
    }
}
