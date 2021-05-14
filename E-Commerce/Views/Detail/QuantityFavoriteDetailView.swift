//
//  QuantityFavoriteDetailView.swift
//  E-Commerce
//
//  Created by Christopher Hicks on 5/14/21.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    //MARK: - PROP
    
    @State private var counter: Int = 0
    
    //MARK: - BODY
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counter > 0 {
                    feedBack.impactOccurred()
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    feedBack.impactOccurred()
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            Spacer()
            
            Button(action: {
                feedBack.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.red)
            })
        })//: Stack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavoriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
