//
//  MenuView.swift
//  Dopamine_Box
//
//  Created by Phillip Todorov on 09/12/2020.
//

import SwiftUI

struct MenuView: View {
	@State var showDetail = false
	
	var body: some View{
		
		VStack {
			List(Library().sortedGoal, id: \.title){ goal in
				GoalRow(goal: goal)
			}
			
			List{
				NavigationLink(destination: AddDailyTaskView(), isActive: $showDetail){
					Text("Add Daily Task")
				}
			}
			
		
		}
		
		
	}
	
	struct GoalRow: View {
		let goal: Goal
		
		var body: some View{
			Text(goal.title)
			}
		}
	}
		


struct MenuView_Previews: PreviewProvider {
	static var previews: some View {
		MenuView()
	}
}
