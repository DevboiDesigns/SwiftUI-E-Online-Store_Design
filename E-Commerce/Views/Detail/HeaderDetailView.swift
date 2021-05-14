//
//  HeaderDetailView.swift
//  E-Commerce
//
//  Created by Christopher Hicks on 5/14/21.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - PROP
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
