//
//  ContentView.swift
//  StarWars
//
//  Created by Ivan Telleria on 2/4/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = StarCardVm()
    var body: some View {
        NavigationStack{
            List{
                ForEach(vm.cards) { card in
                    StarCardView(card: card)
                }
            }
            .navigationTitle("Star Wars")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
