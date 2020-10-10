//
//  ContentView.swift
//  RROnboardingKitExample
//
//  Created by Rudrank Riyam on 11/10/20.
//

import SwiftUI
import RROnboardingKit

struct ContentView: View {
    var body: some View {
        ScrollView {
            RROnboardingKit.TitleView(isIntroductionView: true, title: "Gradient Game", textSize: 30)

            VStack(alignment: .leading) {
                ForEach(InformationDetailModel.allInformationDetails, id: \.self) { detail in
                    RROnboardingKit.InformationDetailView(header: detail.header,
                                                          description: detail.description,
                                                          imageName: detail.imageName)
                }
            }
        }
        .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
