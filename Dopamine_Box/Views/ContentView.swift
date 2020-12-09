//
//  ContentView.swift
//  Dopamine_Box
//
//  Created by Phillip Todorov on 01/12/2020.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		NavigationView{
			MenuView()
				.navigationBarItems(trailing: profileButton)
		}
	}
	
	private var profileButton: some View {
		Button(action: { }){

		}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		Group{
			ContentView()
		}
    }
}
