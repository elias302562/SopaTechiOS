import Foundation

protocol ListServicing {
    func getPhotos(query: String, completion: () -> Void)
}

final class ListService {
    let accessKey = "SSd2HI0XxysbO9RvUYk6X9XXPEAogwjMhAOe1AhjhjE"
}

// MARK: - ListServicing
extension ListService: ListServicing {
    func getPhotos(query: String, completion: () -> Void) {
        guard let url = URL(string: getURL(for: query)) else {
            return // nulo
        }
        
        let request = URLRequest(url: url)
        let dataTask = URLSession.shared.dataTask(with: request) { data, response, error in
            
        }
        dataTask.resume()
    }
    
    func getURL(for query: String) -> String {
        return "https://api.unsplash.com/search/photos?query=\(query)&client_id=\(accessKey)"
    }
}

