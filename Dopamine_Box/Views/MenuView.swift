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
			
			ScrollingTasksView(library: library)
					
//			NavigationLink(destination: AddDailyTaskView()){
//				Text("Add Daily Task")
//			}
//				.offset(y: -30)
			
		}
		.background(LinearGradient(gradient:Gradient(colors: [Color(red: 224.0 / 255, green: 137.0 / 255, blue: 99.0 / 255),Color(red: 255.0 / 255, green: 191.0 / 255, blue: 163.0 / 255)]), startPoint: .top, endPoint: .bottom))
		.edgesIgnoringSafeArea(.all)
		.toolbar{
			ToolbarItem(placement: .status){
				NavigationLink(destination: AddDailyTaskView()){
					Text("Add Daily Task")
				}
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




struct ScrollingTasksView: View {
	
	@ObservedObject var library: Library
	
	var body: some View {
//		@ObservableObject var donetasks = library.sortedGoal.filter(){$0.done == true}.count
		GeometryReader { geometry in
			VStack {
				HStack {
//					Text("Daily tasks Complete: \(donetasks) out of \(library.count())")
					
				}
				.frame(width: geometry.size.width, height:100)

				ScrollView(.horizontal){
					LazyHStack{
						ForEach(library.sortedGoal, id: \.title){ goal in
							Goal.BackgroundFill(goal: goal)
						}
						
					}
				}
				.frame(width: geometry.size.width, height: geometry.size.height/1.2 - 100, alignment: .center)
			}
			
		}
	}
}

