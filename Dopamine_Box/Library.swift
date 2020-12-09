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
	
	
	@Published private var goalsCache: [Goal] = [
		.init(title: "Go for a run"),
		.init(title: "Go for a walk"),
		
		
	]
	
	func addNewGoal(_ goal: Goal) {
		goalsCache.insert(goal, at: 0)
	}
	
	
}
