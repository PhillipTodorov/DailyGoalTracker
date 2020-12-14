//
//  GoalViews.swift
//  Dopamine_Box
//
//  Created by Phillip Todorov on 10/12/2020.
//

import SwiftUI

extension Goal{
	
	struct GoalRow: View {
		let goal:Goal

		var body: some View{
			NavigationLink(
				destination: DetailView(goal: goal)
			){
				Text(goal.title)
			}
		}
	}
}

struct doneButton: View {
	@ObservedObject var goal: Goal
	
	var body: some View{
		
		//		@TODO: find a better image to represent a complete task
		let bookmark = "cross"
		Button{
			goal.done.toggle()
		} label:{Image(systemName: goal.done ? "\(bookmark).fill" : bookmark )}
	}
}




struct Goal_Previews: PreviewProvider {
	
	static var previews: some View{
		VStack{
			Goal.GoalRow(goal: Goal())
			doneButton(goal: .init())
			doneButton(goal: .init(done: true))
		}
	}
}
