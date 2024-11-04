//
//  MarksData.swift
//  NikitasMarksChart
//
//  Created by Nikita Zhdanov on 2024-11-04.
//

import Foundation

struct Mark: Identifiable {
    let id = UUID()
    
    let code: String
    let mark: Int
}

let english = Mark(code: "ENG3U", mark: 94)
let advancedFunctions = Mark(code: "MHF4U", mark: 98)
let microeconomics = Mark(code: "CIE3M", mark: 100)
let compSci = Mark(code: "ICS3U", mark: 99)
let seminar = Mark(code: "HSP3U", mark: 94)
let oe = Mark(code: "PAD3O", mark: 96)
let accounting = Mark(code: "BAF3M", mark: 98)


