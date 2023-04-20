//
//  PageView.swift
//  Software Project New Part
//
//  Created by Christopher Sandoval Terry on 4/18/23.
//

import SwiftUI

struct PageView: View
{
    var page: Page
    
    
    
    var body: some View
    {
        VStack(spacing: 20)
        {
            Image("\(page.imageUrl)")
                .resizable()
                .scaledToFit()
                .padding()
                .cornerRadius(30)
                .background(.gray.opacity(0.10))
                .cornerRadius(10)
                .padding()
            
            Text(page.name)
                .font(.title)
            
            Text(page.description)
                .font(.subheadline)
                .frame(width:300)
            
            
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(page:Page.samplePage)
    }
}
