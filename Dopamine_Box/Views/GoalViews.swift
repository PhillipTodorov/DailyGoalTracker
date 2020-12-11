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

struct Goal_Previews: PreviewProvider {
	
	static var previews: some View{
		Goal.GoalRow(goal: Goal())
	}
}
