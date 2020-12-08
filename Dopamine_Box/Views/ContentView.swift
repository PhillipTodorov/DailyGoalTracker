//
//  ContentView.swift
//  Dopamine_Box
//
//  Created by Phillip Todorov on 01/12/2020.
//

import SwiftUI

struct ContentView: View {
	@State var showDetail = false
	
	
    var body: some View {
		NavigationView{
			NavigationLink(destination: AddDailyTaskView(task: "", showSelf: $showDetail), isActive: $showDetail){
				Text("Add Daily Task")
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
