//
//  FrameWorkViewModel.swift
//  SwiftUICompilstionApp
//
//  Created by Sambhav Singh on 24/09/24.
//

import SwiftUI

final class FrameWorkGridViewModel : ObservableObject {
    var selectedFrameWork: Framework?{
        didSet {isShowingDetailView = true}
    }
    @Published var isShowingDetailView = false
    
}
