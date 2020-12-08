//
//  AddDailyTaskView.swift
//  Dopamine_Box
//
//  Created by Phillip Todorov on 01/12/2020.
//

import SwiftUI

struct AddDailyTaskView: View {
	@ObservedObject var goal = Goal(title: "")
	@Environment(\.presentationMode) var mode: Binding<PresentationMode>
	@Binding var showSelf: Bool
	@Environment var library: Library
	
	
	var body: some View {
		VStack {
			Text("Add a task")
			HStack{
				Text("Task:")
					.bold()
				TextField("New Task", text: $goal.title)
			}
			.frame(width: 300, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
			
			Button(action: {
				self.showSelf = false
			}) {
				Text("Confirm")
				
			}
			
			Button("Order this"){
				self.goal.add(title: self.title)
			}
		}
	}
}

struct AddDailyTaskView_Previews: PreviewProvider {
	static let goal = Goal()
	
	static var previews: some View {
		AddDailyTaskView(task: "", showSelf: .constant(true)).environmentObject(goal)
	}
}
