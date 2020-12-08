//
//  AddDailyTaskView.swift
//  Dopamine_Box
//
//  Created by Phillip Todorov on 01/12/2020.
//

import SwiftUI

struct AddDailyTaskView: View {
	@State var task: String
	@Environment(\.presentationMode) var mode: Binding<PresentationMode>
	@Binding var showSelf: Bool
	@Binding var goal: Goal
	
	
	var body: some View {
		VStack {
			Text("Add a task")
			HStack{
				Text("Task:")
					.bold()
				TextField("New Task", text: $task)
			}
			.frame(width: 300, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
			
			Button(action: {
				self.showSelf = false
				self.goal.add(title:self.title)
			}) {
				Text("Confirm")
				
			}
		}
	}
}

struct AddDailyTaskView_Previews: PreviewProvider {
	static let goal = Goal()
	
	static var previews: some View {
		AddDailyTaskView(task: "", showSelf: .constant(true))
	}
}
