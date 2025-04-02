//
//  StarCardVm.swift
//  StarWars
//
//  Created by Ivan Telleria on 2/4/25.
//

import SwiftUI
import Combine

final class StarCardVm: ObservableObject{
    let repository: DataRepository
    
    @Published var cards: [StarCard]
    
    init(repository: DataRepository = Repository()) {
        self.repository = repository
        do {
            cards = try repository.getData()
        } catch {
            cards = []
        }
    }
}
