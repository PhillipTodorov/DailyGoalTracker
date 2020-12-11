//
//  AddDailyTaskView.swift
//  Dopamine_Box
//
//  Created by Phillip Todorov on 01/12/2020.
//

import SwiftUI
//
struct AddDailyTaskView: View {
	@ObservedObject var goal = Goal()
	@EnvironmentObject var library: Library
	@Environment(\.presentationMode) var mode: Binding<PresentationMode>
	
	var body: some View{
		NavigationView{
			VStack {
				HStack {
					Text("Name")
					TextField("Goal Name", text: $goal.title)
					
				}
			}
			.toolbar{
				ToolbarItem(placement: .status){
					Button("Add to Library") {
						library.addNewGoal(goal)
						mode.wrappedValue.dismiss()
					}
					.disabled([goal.title].contains(where:\.isEmpty))
				}
			}
		}
	}
}



struct AddDailyTaskView_Previews: PreviewProvider {

	static var previews: some View {
		AddDailyTaskView()
			.environmentObject(Library())
	}
}
