//
//  DescriptionDataView.swift
//  SwiftUICompilstionApp
//
//  Created by Sambhav Singh on 23/09/24.
//

import SwiftUI

struct DescriptionDataView: View {
    var frameWork: Framework
    @Binding var isShowingDetailView: Bool
    @State private var ishowingSafariView: Bool = false
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    isShowingDetailView=false
                }label:{
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
        
            }
            .padding()
           
            
            Spacer()
            FrameWorkTitleView(framework: frameWork)
            Text(frameWork.description)
                .padding()
                .font(.body)
            Spacer()
            Button{
                ishowingSafariView=true
            }label: {
                AFButtonFile(buttonTitle: "Learn More")
            }
        }
        .sheet(isPresented: $ishowingSafariView, content: {SafariView(url: URL(string: frameWork.urlString)!)})
    }
}

#Preview {
    DescriptionDataView(frameWork: MockData.sampleData, isShowingDetailView: .constant(false))
}
