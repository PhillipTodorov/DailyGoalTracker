//
//  DetailView.swift
//  Dopamine_Box
//
//  Created by Phillip Todorov on 10/12/2020.
//

import SwiftUI

struct DetailView: View {
	let goal: Goal
	@EnvironmentObject var library: Library
	@Environment(\.presentationMode) var mode: Binding<PresentationMode>

	
    var body: some View {
		VStack {
			
			HStack {
				Text("Title:")
				Text(goal.title)
			}
			.padding()
			
			HStack{
				Text("Status:")
				Text(goal.checkDoneStatus())
				
			}
			
			Button("Delete this task"){
				library.deleteBooks(goal: goal)
				mode.wrappedValue.dismiss()
			}
			.padding()
		}
		
	}
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
		DetailView(goal: .init())
    }
}
