//
//  PageModel.swift
//  Software Project New Part
//
//  Created by Christopher Sandoval Terry on 4/18/23.
//

import Foundation


struct Page: Identifiable,Equatable
{
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var Tag: Int
    
    static var samplePage = Page(name:"Title Example", description:"This is a sample", imageUrl: "Unknown", Tag: 0)
    
    
    static var samplepages: [Page] = [
       Page(name: "Welcome to the Photo World Beta", description: "This is the home page", imageUrl: "Unknown-1", Tag: 0),
       Page(name: "Welcome to the page", description: "This is this pokemon", imageUrl: "Unknown", Tag: 1),
       Page(name: "Welcome to the page", description: "This is this pokemon", imageUrl: "Unknown-2", Tag: 2),
    ]
    
    
}
