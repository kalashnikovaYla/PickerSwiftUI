//
//  ContentView.swift
//  PickerSwiftUI
//
//  Created by sss on 07.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var section = 0
    @State var percentSection = 0
    
    @State var isOn = false
    
    var settingsTime = ["5 min", "10 min", "15 min", "20 min"]
    var percent = ["5%", "50%", "100%"]
    
    var body: some View {
        
        NavigationStack {
            Form {
                Picker(selection: $section) {
                    ForEach(0..<settingsTime.count, id: \.self) {
                        Text(self.settingsTime[$0])
                    }
                } label: {
                    Text("Time")
                }
                Toggle(isOn: $isOn) {
                    Text("Airplay mode").foregroundColor(isOn ? Color.orange: Color.gray)
                }
                
                Picker(selection: $percentSection) {
                    ForEach(0..<percent.count, id: \.self) {
                        Text(self.percent[$0])
                    }
                } label: {
                    Text("Backlight")
                }
            }.navigationTitle("Settings")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
