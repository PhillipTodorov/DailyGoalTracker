//
//  Library.swift
//  Dopamine_Box
//
//  Created by Phillip Todorov on 06/12/2020.
//

import Combine
import Foundation


enum Section: CaseIterable {
  case readMe
  case finished
}

class Library: ObservableObject {
	var sortedGoal: [Goal] { goalsCache }
	
	/// Add a new goal at the start of the library
	func addNewGoal(_ goal: Goal) {
		goalsCache.insert(goal, at: 0)
	}
	
	/// Deletes the selected goal
	func deleteBooks(goal:Goal) {
		if let index = goalsCache.firstIndex(of: goal) {
			goalsCache.remove(at: index)
		}
	}

	func count() -> Int {
		return goalsCache.count
	}
	
//	mutating func numberOfDoneGoals() -> Int {
//		let goalsDone = goalsCache.filter(){$0.done == true}.count
//
//		return goalsDone
//
//	}
	
	
	@Published private var goalsCache: [Goal] = [
		.init(title: "Go for a run",done: false),
		.init(title: "Do 1 hr of reading"),
		.init(title: "Eat cod liver tablets"),
		.init(title: "Make lunch"),
		.init(title: "Do 3 hrs of coding"),
		.init(title: "1 hr learning the piano"),
	]
}
