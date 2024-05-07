//
//  ContentView.swift
//  StepsTracker
//
//  Created by kalyan . on 4/30/24.
//

import SwiftUI

struct ContentView: View {
    @State private var totalSteps: String = ""
    @State private var averageDailySteps: String = ""
    @State private var higherStepsDay: String = ""
    @State private var fromDate: Date = Date()
    @State private var toDate: Date = Date()
    
    var body: some View {
        NavigationStack {
            Text("")
                .navigationTitle("Steps Tracker")
            VStack {
                HStack {
                    DatePicker("From", selection: $fromDate, displayedComponents: [.date])
                        .padding(.leading, 10)
                        .padding(.bottom, 340)
                    Spacer()
                    DatePicker("To", selection: $toDate, displayedComponents: [.date])
                        .padding(.leading, 30)
                        .padding(.bottom, 340)
                    Spacer()
                }
                HStack {
                    Text("Total Steps:")
                        .fontWeight(.semibold)
                        .font(.system(size: 16))
                        .padding()
                    Spacer()
                    TextField("Enter Steps", text: $totalSteps)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
                HStack {
                    Text("Average Daily Steps:")
                        .fontWeight(.semibold)
                        .font(.system(size: 16))
                        .padding()
                        Spacer()
                    TextField("Enter Average Steps", text: $averageDailySteps)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
                HStack {
                    Text("Higher Steps Day")
                        .fontWeight(.semibold)
                        .font(.system(size: 16))
                        .padding()
                    Spacer()
                    TextField("Higher Steps Day", text: $higherStepsDay)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
