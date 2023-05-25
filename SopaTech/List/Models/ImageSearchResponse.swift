struct ImageSearchResponse: Decodable {
    let results: [Image]
}

struct Image: Decodable {
    let description: String

    enum CodingKeys: String, CodingKey {
        case description = "alt_description"
    }
}
