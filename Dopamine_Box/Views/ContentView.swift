//
//  ContentView.swift
//  Dopamine_Box
//
//  Created by Phillip Todorov on 01/12/2020.
//

import SwiftUI

struct ContentView: View {
	@EnvironmentObject var library: Library
	
	var body: some View {
		NavigationView{
			MenuView()
		}
	
//		MenuView()
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		Group{
			ContentView()
				.environmentObject(Library())
				.previewLayout(.fixed(width: 896, height: 414))
		}
    }
}
