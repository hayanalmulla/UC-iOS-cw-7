//
//  ContentView.swift
//  CW7 part2
//
//  Created by macbook on 22/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var tap = false
    var body: some View {
        HStack{
        Text("Choose Your Major")
                .bold()
                .font(.largeTitle)
                .padding()
        Image(systemName: "plus")
                .font(.largeTitle)
                .padding()
                .background(.green)
                .clipShape(Circle())
                .onTapGesture {
                    tap.toggle()
                }
            if tap{
                VStack{
                    Text("Computere Engineering")
                    Text("Computere Science")
                    Text("Another Major")
                    
                }
            }
            
            
       
        
            
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
