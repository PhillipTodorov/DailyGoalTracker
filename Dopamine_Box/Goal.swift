//
//  Tasks.swift
//  Dopamine_Box
//
//  Created by Phillip Todorov on 06/12/2020.
//
import Combine
import Foundation

class Goal: ObservableObject{
	var title: String
	
	init(title: String = "Title"){
		self.title = title
	}
}
