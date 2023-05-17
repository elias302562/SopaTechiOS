protocol ListInteracting: AnyObject {
    func didStartScreen()
}

final class ListInteractor {
    private let service: ListServicing
    private let presenter: ListPresenting

    init(service: ListServicing, presenter: ListPresenting) {
        self.service = service
        self.presenter = presenter
    }
}

// MARK: - ListInteracting
extension ListInteractor: ListInteracting {
    func didStartScreen() {
        service.getPhotos(query: "office") {
            
        }
    }
}
