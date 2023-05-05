//
//  ContentView.swift
//  Software Project New Part
//
//  Created by Christopher Sandoval Terry on 4/18/23.
//
//bruh
//Tanner sucks balls

import SwiftUI

struct ContentView: View {
    @State private var pageIndex = 0
    private let pages:[Page] = Page.samplepages
    private let dotApperance = UIPageControl.appearance()
    

    var body: some View
    {
        TabView(selection: $pageIndex)
        {
            ForEach(pages) {page in
                VStack
                {
                    Spacer()
                    PageView(page: page)
                    Spacer()
                    if page == pages.last
                    {
                        Button("Sign up", action:gotoZero)
                            .buttonStyle(.bordered)
                    }
                    else
                    {
                        Button("Next",action: incrementPage)
                    }
                    Spacer()
                }
                .tag(page.Tag)
            }
            
        }
        .animation(.easeInOut, value: pageIndex)
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode:
                .interactive ))
        .onAppear()
        {
            
            dotApperance.currentPageIndicatorTintColor = .black
            
            dotApperance.pageIndicatorTintColor = .gray
        }
        
    }
    func incrementPage()
    {
        pageIndex += 1
        
    }
    func gotoZero()
    {
        pageIndex = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
