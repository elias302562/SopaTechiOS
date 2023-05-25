protocol ListInteracting: AnyObject {
    func didStartScreen()
}

final class ListInteractor {
    private let service: ListServicing
    private let presenter: ListPresenting
    private let query: String

    init(
        service: ListServicing,
        presenter: ListPresenting,
        query: String
    ) {
        self.service = service
        self.presenter = presenter
        self.query = query
    }
}

// MARK: - ListInteracting
extension ListInteractor: ListInteracting {
    func didStartScreen() {
        service.getPhotos(query: query) { result in
            switch result {
            case .success(let imageSearchResponse):
                print(imageSearchResponse)
            case .failure(let error):
                print(error)
            }
        }
    }
}
