//
//  ContentView.swift
//  GuessApp
//
//  Created by Kynan Bertulli on 2021-09-18.
//

import SwiftUI

/*
 
 more than one group of something and how to stack them
 v-stack - vertical
 h-stack - horizontal
 z-stack - zth
 */
struct ContentView: View {
    @State private var showAlert = false
    
    var body: some View {
        
        
//  Alerts
        
        Button("show alert"){
            self.showAlert = true
        }
        .alert(isPresented: $showAlert){
            Alert(title: Text("hello swiftui"),
            message: Text("more detail message"),
            dismissButton: .default(Text("ok")))
        }
        
        
        
        
        
        
//Buttons and images
//        Button(action: {
//            print("button tapped!")
//        }){
//            HStack{
//                Image(systemName: "pencil")
//                Text("Edit")
//            }
//
//        }
        
//Gradients
        //Linear Gradients
//        LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue]), startPoint: .top, endPoint: .bottom)
        
        //Radial Gradients
//        RadialGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 20, endRadius: 200
//        )
        
        //Angular Gradients
//        AngularGradient(gradient: Gradient(colors: [Color.red, Color.yellow, Color.green, .purple, .pink]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
       
// p2
//        ZStack{
//
//            //working beyond notch to cover all areas
//            Color.blue.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//
//            //specific size/shape
//            Color.red.frame(width: 200, height: 200)
////            color.primary -black or white depending on device
//            //specific rgb values
//            Color(red: 1, green: 0.8, blue: 0)
//            Text("your content")
//                .background(Color.red)
//        }
        
        
        
        
        //three by three
//        VStack(spacing: 20){
//            HStack(alignment: .center, spacing: 20){
//                    Text(".o.")
//                    Text(".o.")
//                    Text(".o.")
//                }
//            HStack(alignment: .center, spacing: 20){
//                    Text(".o.")
//                    Text(".o.")
//                    Text(".o.")
//                }
//            HStack(alignment: .center, spacing: 20){
//                    Text(".o.")
//                    Text(".o.")
//                    Text(".o.")
//                }
//        }
        
        
        
//        ZStack(alignment: .bottom){
//            Text("hello")
//            Text("hello again")
//        }
        
        
//        HStack(alignment: .center, spacing: 20){
//            Text("hello")
//            Text("hello again")
//            Spacer()
//        }
        
        
        
//        VStack(alignment: .center, spacing: 20){
//            Text("hello")
//            Text("hello again")
//        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
