//
//  Library.swift
//  Dopamine_Box
//
//  Created by Phillip Todorov on 06/12/2020.
//

import Combine
import Foundation

final class Library: ObservableObject {
	var sortedGoal: [Goal] { goalsCache }
	
	
	private var goalsCache: [Goal] = [
		.init(title: "Go for a run"),
		
		
	]
	
	func addNewGoal(_ goal: Goal) {
		goalsCache.insert(goal, at: 0)
	}
}
