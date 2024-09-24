//
//  AFButtonFile.swift
//  SwiftUICompilstionApp
//
//  Created by Sambhav Singh on 23/09/24.
//

import SwiftUI

struct AFButtonFile: View {
    
    var buttonTitle : String
    
    var body: some View {
        Text(buttonTitle)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 300 , height: 50)
            .background(Color.red)
            .foregroundStyle(.white)
            .cornerRadius(12)
    }
}

#Preview {
    AFButtonFile(buttonTitle: "Learn more")
}
