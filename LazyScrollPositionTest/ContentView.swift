//
//  ContentView.swift
//  LazyScrollPositionTest
//
//  Created by Dale Price on 2/19/24.
//

import SwiftUI

struct ContentView: View {
	@State private var model = ContentModel()
	@State private var scrolledItem: ContentItem.ID?
	@State private var text = ""
	
    var body: some View {
		TextField("Text field", text: $text)
		ScrollView {
			LazyVStack {
				ForEach(model.items) { item in
					Text(item.content)
						.padding()
						.background(item.color)
				}
			}
			.scrollTargetLayout()
		}
		.scrollPosition(id: $scrolledItem)
    }
}

#Preview {
    ContentView()
}
