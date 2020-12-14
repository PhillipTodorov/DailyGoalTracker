//
//  MenuView.swift
//  Dopamine_Box
//
//  Created by Phillip Todorov on 09/12/2020.
//

import SwiftUI

struct MenuView: View {
	@State var showDetail = false
	@State var addingNewGoal = false
	@EnvironmentObject var library: Library
	
	
	
	var body: some View{
			VStack {
				List(library.sortedGoal, id: \.title){ goal in
					HStack {
						Goal.GoalRow(goal: goal)
						doneButton(goal: goal)
					}
				}
				
				NavigationLink(destination: AddDailyTaskView()){
					Text("Add Daily Task")
			}
		}
	}
}
		


struct MenuView_Previews: PreviewProvider {
	static var previews: some View {
		MenuView()
			.environmentObject(Library())
	}
}



