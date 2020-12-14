//
//  Tasks.swift
//  Dopamine_Box
//
//  Created by Phillip Todorov on 06/12/2020.
//
import Combine
import Foundation


class Goal: ObservableObject, Equatable{
	
	static func == (lhs: Goal, rhs: Goal) -> Bool {
		return lhs.title == rhs.title
	}
	
	@Published var title: String /// title of the goal
	@Published var done: Bool /// if goal has been done for the day, set to true, else by default is false
	
	
	init(title: String = "title", done: Bool = true){
		self.title = title
		self.done = done
		
	}
	
	
	/// checks goal's return status and returns appropriate string
	/// - Returns: String, true or false
	func checkDoneStatus() -> String{
		if done == true{
			return "true"
		}else{
			return "false"
		}
	}
}
