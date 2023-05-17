protocol SearchPresenting {
    func openSearchList(query: String)
}

final class SearchPresenter {
    let coordinator: SearchCoordinating
    weak var displayer: SearchDisplaying?
    
    init(coordinator: SearchCoordinating) {
        self.coordinator = coordinator
    }
}

extension SearchPresenter: SearchPresenting {
    func openSearchList(query: String) {
        coordinator.openSearchList(query: query)
    }
}
