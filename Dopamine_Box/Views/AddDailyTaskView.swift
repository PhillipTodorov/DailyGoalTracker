//
//  AddDailyTaskView.swift
//  Dopamine_Box
//
//  Created by Phillip Todorov on 01/12/2020.
//

import SwiftUI

struct AddDailyTaskView: View {
	@ObservedObject var goal = Goal()
	@EnvironmentObject var library: Library
	@Environment(\.presentationMode) var mode: Binding<PresentationMode>
	
	init() {
		UIToolbar.appearance().barTintColor = UIColor(red: 94.0/255, green: 150.0/255, blue: 174.0/255, alpha: 0)
	}
	
	var body: some View{
		ZStack{
			Rectangle()
				.fill((LinearGradient(gradient:Gradient(colors: [Color(red: 224.0 / 255, green: 137.0 / 255, blue: 99.0 / 255),Color(red: 255.0 / 255, green: 191.0 / 255, blue: 163.0 / 255)]), startPoint: .top, endPoint: .bottom)))
				.ignoresSafeArea(.all)
			
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
