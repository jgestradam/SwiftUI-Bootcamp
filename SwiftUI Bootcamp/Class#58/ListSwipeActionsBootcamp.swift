//
//  ListSwipeActionsBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Joseph Estrada on 11/26/22.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = ["apple", "orange", "peach", "banana"]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit.capitalized)
                    .swipeActions(
                        edge: .trailing,
                        allowsFullSwipe: true) {
                            Button("Archive") {
                                
                            }
                            .tint(.green)
                            
                            Button("Save") {
                                
                            }
                            .tint(.blue)
                            
                            Button("Junk") {
                                
                            }
                            .tint(.black)
                        }
                        .swipeActions(
                            edge: .leading,
                            allowsFullSwipe: false) {
                                Button("Share") {
                                    
                                }
                                .tint(.yellow)
                            }
            }
            //.onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

struct ListSwipeActionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsBootcamp()
    }
}
