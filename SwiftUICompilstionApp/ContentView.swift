//
//  ContentView.swift
//  SwiftUICompilstionApp
//
//  Created by Sambhav Singh on 19/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = FrameWorkGridViewModel()
    
    let columns : [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameWorkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFrameWork = framework
                            }
                    }
                }
                .navigationTitle("🍎 Frameworks")
                
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    DescriptionDataView(frameWork: viewModel.selectedFrameWork ?? MockData.sampleData, isShowingDetailView: $viewModel.isShowingDetailView)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct FrameWorkTitleView: View {
    
    let framework : Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
