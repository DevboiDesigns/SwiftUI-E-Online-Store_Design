//
//  NavigationBarDetailView.swift
//  E-Commerce
//
//  Created by Christopher Hicks on 5/14/21.
//

import SwiftUI

struct NavigationBarDetailView: View {
    //MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn) {
                    feedBack.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })//: Button
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })//: Button
            
        }//: HStack
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
