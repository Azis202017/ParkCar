//
//  ContentView.swift
//  ParkCar
//
//  Created by Abdul Azis  Al Ayubbi on 06/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.primary).ignoresSafeArea()
            
            VStack (alignment: .leading){
                HStack {
                    Spacer()
                    Image("logo").resizable().frame( width:238,height: 40)
                    Spacer()
                }.padding(.bottom, 80)
                
                Image("porsche").resizable().frame(height: 250)
                VStack (alignment:.leading){
                    Text("Get Your Secure Park").multilineTextAlignment(.leading).font(.system(size: 46)).foregroundColor(.white).fontWeight(.bold)
                    Text("We provide thousands safe places for your beautiful and luxury cars").multilineTextAlignment(.leading).foregroundColor(Color("subtitle_text")).font(.system(size: 20)).padding(.top, 1.5)
                    Button(action: getStarted, label: {
                        HStack {
                            Spacer()
                            Text("Get Started").font(.system(size: 18).bold()).foregroundColor(.white)
                            Spacer()
                        }.padding(.all, 8)
                    }).background(Color("button_color")).cornerRadius(50).padding(.top, 20)
                }.padding(.horizontal,20)
                
            }
        }
    }
    func getStarted() {
        print("Get Started")
    }
}

#Preview {
    ContentView()
}
