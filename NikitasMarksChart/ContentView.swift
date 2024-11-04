//
//  ContentView.swift
//  NikitasMarksChart
//
//  Created by Nikita Zhdanov on 2024-11-04.
//

import SwiftUI
import Charts

let gradeData = [
    (subject: "AP English", data: english),
    (subject: "AP Advanced Functions", data: advancedFunctions),
    (subject: "AP Seminar", data: seminar),
    (subject: "Pre-AP Microeconomics", data: microeconomics),
    (subject: "Pre-AP Computer Science", data: compSci),
    (subject: "Outdoor Education", data: oe),
    (subject: "Accounting", data: accounting),
]

struct ContentView: View {
    var body: some View {
        VStack {
            Chart {
                ForEach(gradeData, id: \.subject) { item in
                    BarMark(
                        x: .value("Subject", item.data.code),
                        y: .value("Grade", item.data.mark)
                    )
                    .foregroundStyle(by: .value("Subject", item.subject))
                    
                    // Changing position of annotation
                    .annotation(position: .overlay, alignment: .center) {
                        Text("\(item.data.mark)")
                            .foregroundColor(.white)
                            .font(.system(size: 16))
                    }
                }
            }
            .chartYAxis {
                AxisMarks(position: .leading)
            }
            
            // Setting domain for Y-axis
            .chartYScale(domain: 0...100)
        }
        .frame(height: 500)
        .padding(.horizontal, 10)
    }
}

#Preview {
    ContentView()
}
