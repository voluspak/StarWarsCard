//
//  StarWarsTests.swift
//  StarWarsTests
//
//  Created by Ivan Telleria on 2/4/25.
//

@testable import StarWars
import XCTest

final class StarWarsTests: XCTestCase {
    let repository = RepositoryTest()
    var viewModel: StarCardVm!
    
    override func setUp() {
        super.setUp()
        viewModel = StarCardVm(repository: repository)
    }
    
    func testDataLoad() throws {
        let data = try repository.getData()
        XCTAssertEqual(data.count, 4, "La cantidad de elementos en el repositorio debería ser 4")
    }
    
    func testDataLoadVM() throws {
        XCTAssertEqual(viewModel.cards.count, 4, "La cantidad de elementos en el ViewModel debería ser 4")
    }
}
