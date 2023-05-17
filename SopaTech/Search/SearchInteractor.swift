protocol SearchInteracting {
    func search(text: String?)
}

final class SearchInteractor {
    private let presenter: SearchPresenting

    init(presenter: SearchPresenting) {
        self.presenter = presenter
    }
}

extension SearchInteractor: SearchInteracting {
    func search(text: String?) {
        guard
            let text = text,
            !text.isEmpty
        else { return }
        
        presenter.openSearchList(query: text)
    }
}
