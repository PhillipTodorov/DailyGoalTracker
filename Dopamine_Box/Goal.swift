//
//  Tasks.swift
//  Dopamine_Box
//
//  Created by Phillip Todorov on 06/12/2020.
//
import Combine
import Foundation

class Goal: ObservableObject{
	@Published var title: String
	
	init(title: String = "title"){
		self.title = title
	}
}
