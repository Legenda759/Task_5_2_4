//
//  ContentView.swift
//  Task_5_2_4
//
//  Created by Legenda_759 on 29/01/22.
//

import SwiftUI

extension UIScreen{
    static let width = UIScreen.main.bounds.width
    static let height = UIScreen.main.bounds.height
}

struct ContentView: View {
    
    var columns: [GridItem] = Array(repeating: .init(.fixed(UIScreen.width/2)), count: 2)
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns){
                ForEach((0...100), id: \.self){ item in
                    ZStack(alignment: .bottom){
                        Image("mbp16.2021").resizable().aspectRatio(contentMode: .fit) .frame(width: UIScreen.width/2, height: UIScreen.width/2, alignment: .top)
                        Text("MacBook Pro \(item)").padding().frame(maxWidth: .infinity, alignment: .center).background(Color.gray)
                    }.background(.green)
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
