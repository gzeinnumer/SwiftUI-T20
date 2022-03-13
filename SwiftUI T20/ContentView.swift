//
//  ContentView.swift
//  SwiftUI T20
//
//  Created by M Fadli Zein on 13/03/22.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 260, height: 200)
                .offset(y: 20)
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 300, height: 200)
                .foregroundColor(Color.purple)
                .offset(y: show ? -200 : 0)
                .scaleEffect(show ? 1.2: 1)
                .rotationEffect(Angle(degrees: show ? 30 : 0))
                .rotation3DEffect(
                    Angle(degrees: show ? 30 : 0),
                    axis: (x: 1.0, y: 0.0, z: 0.0),
                    anchor: .center,
                    anchorZ: 0.0,
                    perspective: 1
                )
                .onTapGesture {
                    withAnimation(.spring()){
                        show.toggle()
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
