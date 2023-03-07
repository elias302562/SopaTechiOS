protocol SearchInteracting { }

final class SearchInteractor {
    private let presenter: SearchPresenting

    init(presenter: SearchPresenting) {
        self.presenter = presenter
    }
}

extension SearchInteractor: SearchInteracting { }
