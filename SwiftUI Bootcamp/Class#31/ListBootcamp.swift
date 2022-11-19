//
//  ListBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Joseph Estrada on 11/19/22.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = ["apple", "orange", "peach", "banana"]
    @State var veggies: [String] = ["tomato", "potato", "carrot"]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header: HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                        .font(.headline)
                        .foregroundColor(.orange)
                ) {
                        ForEach(fruits, id:\.self) { fruit in
                            Text(fruit.capitalized)
                                .font(.body)
                                .foregroundColor(.white)
                                //.frame(maxWidth: .infinity, maxHeight: .infinity)
                                //.background(Color.pink)
                                .padding(.vertical)
                        }
                        .onDelete (perform: delete)
                        .onMove (perform: move)
                        .listRowBackground(Color.blue)
                }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                }
            }
            .accentColor(.purple)
            //.listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    addButton
            )
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
