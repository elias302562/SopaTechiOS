protocol SearchPresenting { }

final class SearchPresenter {
    let coordinator: SearchCoordinating
    weak var displayer: SearchDisplaying?
    
    init(coordinator: SearchCoordinating) {
        self.coordinator = coordinator
    }
}

extension SearchPresenter: SearchPresenting { }
