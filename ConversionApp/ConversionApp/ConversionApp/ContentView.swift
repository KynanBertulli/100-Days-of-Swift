//
//  ContentView.swift
//  ConversionApp
//
//  Created by Kynan B on 2021-09-17.
//





/*
 Conversion App:
 users choose Celsius, Fahrenheit, or Kelvin.
 
 
 */
import SwiftUI

struct ContentView: View {
    @State private var chosenUnit = 0
    @State private var numberOfPeople = 0
//    @State private var result = 0
    
    @State private var inputTemp = ""
    @State private var inputUnit = 0
    let tempUnits = ["Celsius", "Fahrenheit", "Kelvin"]
    var numberTemp = 0
    
    
    var result: Double{
        switch chosenUnit {
        // celsius
        case 0:
            if(inputUnit == 0){
                let result1 = Double(inputTemp) ?? 1
                return result1
            }
            else if(inputUnit == 1){
                var result1 = Double(inputTemp) ?? 1
                result1 = result1 * 1.8 + 32
                return result1
            }
            else if(inputUnit == 2){
                var result1 = Double(inputTemp) ?? 1
                result1 = result1 + 273.15
                return result1
            }
            return 1
        //fahrenheit
        case 1:
            if(inputUnit == 0){
                var result1 = Double(inputTemp) ?? 1
                result1 = (result1 - 32) / 1.8
                return result1
            }
            else if(inputUnit == 1){
                let result1 = Double(inputTemp) ?? 1
                return result1
            }
            else if(inputUnit == 2){
                var result1 = Double(inputTemp) ?? 1
                result1 = (result1 - 32) / 1.8
                result1 = result1 + 273.15
                return result1
            }
            return 2
        //kelvin
        case 2:
            if(inputUnit == 0){
                var result1 = Double(inputTemp) ?? 1
                result1 = result1 - 273.15
                return result1
            }
            else if(inputUnit == 1){
                var result1 = Double(inputTemp) ?? 1
                result1 = ((result1 - 273.15)*1.8 )+32
                return result1
            }
            else if(inputUnit == 2){
                let result1 = Double(inputTemp) ?? 1
                return result1
            }
            return 0
        default:
            return 0
        }
    }
    var body: some View {
        NavigationView{
            
        
        Form{
            Section(header: Text("Enter Input Temperature Unit")){
                
                Picker("set unit", selection: $inputUnit){
                    ForEach(0 ..< tempUnits.count){
                        Text("\(self.tempUnits[$0])")
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
            Section(header: Text("Enter Temperature Unit to Convert to:")){
                
                Picker("choose unit", selection: $chosenUnit){
                    ForEach(0 ..< tempUnits.count){
                        Text("\(self.tempUnits[$0])")
                    }
                }.pickerStyle(SegmentedPickerStyle())
            
                
            
            }
            
            
            Section(header: Text("Enter number:")){
                TextField("12323", text: $inputTemp)
            }
           
            Section(header: Text("Results:")){
                Text("\(result, specifier: "%0.f")")
            }
            }
        .navigationBarTitle("Temperature Turn")
        }
    }
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

 
