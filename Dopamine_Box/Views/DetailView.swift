//
//  DetailView.swift
//  Dopamine_Box
//
//  Created by Phillip Todorov on 10/12/2020.
//

import SwiftUI

struct DetailView: View {
	let goal: Goal
	
	
    var body: some View {
		VStack {
			Text(goal.title)
		}
	}
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
		DetailView(goal: .init())
    }
}
