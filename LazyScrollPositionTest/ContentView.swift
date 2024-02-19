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
		NavigationStack {
			TextField("Text field", text: $text)
			ScrollView {
				Content(model: model)
					.scrollTargetLayout()
			}
			.scrollPosition(id: $scrolledItem)
			.toolbar {
				Button("Load More") { model.addItems(count: 20) }
			}
		}
    }
}

struct Content: View {
	var model: ContentModel
	var body: some View {
		LazyVStack {
			ForEach(model.items) { item in
				Text(item.content)
					.padding()
					.background(item.color)
			}
		}
	}
}

#Preview {
    ContentView()
}
