//
//  InformationDetailModel.swift
//  RROnboardingKitExample
//
//  Created by Rudrank Riyam on 11/10/20.
//

import Foundation

struct InformationDetailModel: Hashable {
    var header: String
    var description: String
    var imageName: String
}

extension InformationDetailModel {
    static let allInformationDetails = [
        InformationDetailModel(header: "MATCH",
                               description: "Match the gradient by moving the sliders for each left and right colors.",
                               imageName: "slider.horizontal.below.rectangle"),
        InformationDetailModel(header: "PRECISE",
                               description: "More precision with the steppers to get that 100 score.",
                               imageName: "minus.slash.plus"),
        InformationDetailModel(header: "SCORE",
                               description: "A detailed score and comparsion of your gradient and the target gradient with overall score.",
                               imageName: "checkmark.circle"),
        InformationDetailModel(header: "SYNC",
                               description: "Sync the history of your target gradients across all your devices on iCloud.",
                               imageName: "icloud.circle")
    ]
}
