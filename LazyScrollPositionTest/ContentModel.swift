//
//  ContentModel.swift
//  LazyScrollPositionTest
//
//  Created by Dale Price on 2/19/24.
//

import SwiftUI

@Observable class ContentModel {
	var items: [ContentItem]
	
	init() {
		self.items = []
		for _ in 1...50 {
			self.items.append(ContentItem(ContentItem.exampleContent.randomElement() ?? ""))
		}
	}
}

struct ContentItem: Identifiable {
	var content: String
	var color: Color
	var id: UUID
	
	init(_ content: String) {
		self.content = content
		self.color = Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
		self.id = .init()
	}
	
	static let exampleContent = [
		"Fugiat est eos aut deserunt adipisci voluptas placeat.",
		"At omnis accusantium ratione rerum sed aliquam tempora tenetur. Assumenda quos aspernatur iusto non molestias ducimus non.",
		"Ullam neque fugiat aut rerum omnis delectus quaerat. Dolorem ut reprehenderit ea autem.",
		"Odio qui autem quasi quibusdam iusto error consequatur culpa. Exercitationem quia non praesentium quod veniam facilis. Voluptatem est et dolores occaecati dolor eum vel.",
		"Sapiente est magni dolorem. Ut perferendis dicta id eligendi. Occaecati distinctio ut rerum hic necessitatibus quas. Eos qui aliquam nam.",
		"Doloribus voluptas officiis laudantium earum reprehenderit ut et perspiciatis. Nesciunt aut quisquam deserunt sapiente porro aliquam laboriosam. Id nulla sed possimus suscipit voluptatem sequi ut. Autem aut non officiis expedita molestiae minima iure."
	]
	
}
