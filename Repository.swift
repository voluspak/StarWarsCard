//
//  Repository.swift
//  StarWars
//
//  Created by Ivan Telleria on 2/4/25.
//

import Foundation

protocol DataRepository {
    var url: URL { get }
}

extension DataRepository {
    func getData() throws -> [StarCard] {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            return try decoder.decode([StarCardDTO].self, from: data).map(\.toCard)
    }

}

struct Repository: DataRepository {
    var url: URL {
        Bundle.main.url(forResource: "StarWarsCharacters", withExtension: "json")!
    }
}

struct RepositoryTest: DataRepository {
    var url: URL {
        Bundle.main.url(forResource: "StarWarsMuckUp", withExtension: "json")!
    }
}
