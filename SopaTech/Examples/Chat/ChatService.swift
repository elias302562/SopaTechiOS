struct Message {
    
}

protocol ChatServicing {
    func getMessages(completion: ([Message]) -> Void)
}

final class ChatService: ChatServicing {
    func getMessages(completion: ([Message]) -> Void) {
        
    }
}
