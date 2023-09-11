//
//  ContentView.swift
//  CircularSwiftUI
//
//  Created by Beste Kocaoglu on 26.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var firstCirclePercentange : Double = 0
    @State var secondCirclePercentange : Double = 0
    @State var thirdCirclePercentange : Double = 0
     
    var body: some View {
        ZStack {
            
            Circular(lineWidth: 40, backgroundColor: Color.blue.opacity(0.2), foregroundColor: Color.blue, percentage: firstCirclePercentange)
                .frame(width: 350, height: 350)
                .onTapGesture {
                    if self.firstCirclePercentange == 0 {
                        self.firstCirclePercentange = 50
                    } else {
                        self.firstCirclePercentange = 0
                    }
                }
            
            Circular(lineWidth: 40, backgroundColor: Color.red.opacity(0.2), foregroundColor: Color.red, percentage: secondCirclePercentange)
                .frame(width: 250, height: 250)
                .onTapGesture {
                    if self.secondCirclePercentange == 0 {
                        self.secondCirclePercentange = 75
                    } else {
                        self.secondCirclePercentange = 0
                    }
                }
            
            Circular(lineWidth: 40, backgroundColor: Color.green.opacity(0.2), foregroundColor: Color.green, percentage: thirdCirclePercentange)
                .frame(width: 150, height: 150)
                .onTapGesture {
                    if self.thirdCirclePercentange == 0 {
                        self.thirdCirclePercentange = 100
                    } else {
                        self.thirdCirclePercentange = 0
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
