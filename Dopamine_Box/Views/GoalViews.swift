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
	
	struct BackgroundFill: View {
		let goal:Goal
		
		var body: some View{
			NavigationLink (destination: DetailView(goal: goal)) {
				ZStack{
					RoundedSquare()
					VStack{
						Text(goal.title)
							.foregroundColor(Color.white)
							.fontWeight(.bold)
						Text("")
						
						doneButton(goal: goal)
					}
				}
			}
		}
	}
}

struct doneButton: View {
	@ObservedObject var goal: Goal
	
	var body: some View{
		
		//		@TODO: find a better image to represent a complete task
		let bookmark = "circle"
		
	
		var button = Button{
			goal.done.toggle()
		} label:{
			Image(systemName: goal.done ? "\(bookmark).fill" : bookmark )
				.resizable()
				.frame(width: 50, height: 50)
				
				
			goal.done ? Text("Done")
				.fontWeight(.bold)
				 : Text("Not done")
				.fontWeight(.bold)
		}
		
		goal.done ? button.foregroundColor(.green) : button.foregroundColor(Color(red: 255.0/255, green: 105.0/255, blue: 97.0/255))
	}
}






struct Goal_Previews: PreviewProvider {
	
	static var previews: some View{
		VStack{
			Goal.GoalRow(goal: Goal())
			doneButton(goal: .init())
			doneButton(goal: .init(done: true))
			Goal.BackgroundFill(goal: .init())
		}
	}
}
