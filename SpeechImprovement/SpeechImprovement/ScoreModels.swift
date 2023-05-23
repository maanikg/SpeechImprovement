//
//  ScoreModels.swift
//  SpeechImprovement
//
//  Created by Maanik Gogna on 2023-05-08.
//

import Foundation
import SwiftUI

var run = 1
//struct Score:Identifiable, Hashable{
struct Score : Identifiable{
//    var run:Int = 1
    var date: Date //date, time of recording
    var scoreVal: Double = 0
    var badFeatures:[String] = []
    var goodFeatures:[String] = []
    var tips: [String] = [] //array of strings
    var storedFilename: String = ""
    var scoreName: String = ""
    var duration: TimeInterval = TimeInterval()
//    var scoreColor: Color = Color(red:1.0-Double(scoreVal), green: scoreVal, blue:0.0)
    var scoreColor:Color = Color.black
//    var id: String{scoreName+String(scoreVal)}
//    var id: String{storedFilename}
    var id: Int = 0
    
    init(date: Date = Date.now, scoreVal: Double = 50, badFeatures: [String] = [], goodFeatures: [String] = [], tips:[String] = [], storedFilename: String = "temp", duration: TimeInterval = TimeInterval(0), scoreColor: Color = .black) {
        self.id = run
        self.date = date
        self.scoreVal = scoreVal
        self.badFeatures = badFeatures
        self.goodFeatures = goodFeatures
        self.tips = tips
        self.storedFilename = storedFilename
        self.duration = duration
        self.scoreName = "Run \(run)"
        self.scoreColor = scoreVal > 75 ? .green : scoreVal > 50 ? .yellow : .red
        print("score: \(self.scoreVal), id: \(self.id)")
        run = run+1
    }
    
    static var example = Score(
        date:Date(timeIntervalSinceNow: 60*60*24*365*1.5), scoreVal:92.6, badFeatures: ["Talked too fast", "Should use better flow"],
        goodFeatures: ["Great tone", "No stuttering"],
        tips: ["More effective spacing", "More convincing word choice"],
        storedFilename: "temp")
}

var archive: [Score] = [
    Score(date:Date(timeIntervalSinceNow: 60*60*24*365*1.5), scoreVal:94.6, badFeatures: ["volume", "pacing"],
          goodFeatures: ["confidence", "expression"],
          tips: ["practice more"]),
    Score(date:Date(timeIntervalSinceNow: 60*60*24*365*1.5), scoreVal:84.6, badFeatures: ["volume", "pacing"],
          goodFeatures: ["confidence", "expression"],
          tips: ["practice less"]),
    Score(date:Date(timeIntervalSinceNow: 60*60*24*365*1.5), scoreVal:64.5, badFeatures: ["volume", "pacing"],
          goodFeatures: ["confidence", "expression"],
          tips: ["no practice"]),
    Score(date:Date(timeIntervalSinceNow: 60*60*24*365*1.5), scoreVal:95.0, badFeatures: ["volume", "pacing"],
          goodFeatures: ["confidence", "expression"],
          tips: ["practice now"])
]
