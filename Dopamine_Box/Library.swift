//
//  Library.swift
//  Dopamine_Box
//
//  Created by Phillip Todorov on 06/12/2020.
//

import Combine
import Foundation

final class Library {
	var sortedGoal: [Goal] { goalsCache }
	
	
	private var goalsCache: [Goal] = [
		.init(title: "Go for a run"),
		
	]
	
//	mutating func addNewBook(_ goal: Goal) {
//		goalsCache.insert(goal, at: 0)
//	}
}
