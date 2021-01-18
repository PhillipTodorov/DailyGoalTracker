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
		NavigationView {
			VStack {
				ScrollView(.horizontal){
					LazyHStack{
						ForEach(library.sortedGoal, id: \.title){ goal in
							Goal.BackgroundFill(goal: goal)
						}
					}
				}
				.frame(maxHeight: 1000)
				.padding(.bottom)
				NavigationLink(destination: AddDailyTaskView()){
					Text("Add Daily Task")
				}
				.offset(y: -30)
				
			}
			.background(LinearGradient(gradient:Gradient(colors: [Color(red: 224.0 / 255, green: 137.0 / 255, blue: 99.0 / 255),Color(red: 255.0 / 255, green: 191.0 / 255, blue: 163.0 / 255)]), startPoint: .top, endPoint: .bottom))
			.edgesIgnoringSafeArea(.all)
		}
	}
}



struct MenuView_Previews: PreviewProvider {
	static var previews: some View {
		MenuView()
			.environmentObject(Library())
	}
}



