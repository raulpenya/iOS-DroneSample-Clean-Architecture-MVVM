//
//  MissionResultView.swift
//  drone
//
//  Created by raulbot on 23/1/23.
//

import SwiftUI

struct MissionResultView: View {
    
    @ObservedObject var notesViewModel: MissionResultViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Text(NSLocalizedString("mission_result_title", comment: ""))
                    .applyTitleLabelStyle()
                HStack {
                    Text(NSLocalizedString("initial_position_text", comment: ""))
                        .applySubtitleLabelStyle()
                    Text(NSLocalizedString("initial_position_text", comment: ""))
                        .applyInfoLabelStyle()
                }
                HStack {
                    Text(NSLocalizedString("plateau_text", comment: ""))
                        .applySubtitleLabelStyle()
                    Text(NSLocalizedString("plateau_text", comment: ""))
                        .applyInfoLabelStyle()
                }
                HStack {
                    Text(NSLocalizedString("instructions_text", comment: ""))
                        .applySubtitleLabelStyle()
                    Text(NSLocalizedString("instructions_text", comment: ""))
                        .applyInfoLabelStyle()
                }
                Text(NSLocalizedString("result", comment: ""))
                    .applyResultLabelStyle()
                Button(NSLocalizedString("create_button", comment: "")) {
                    
                }.buttonStyle(ActionButtonStyle())
            }
        }
    }
}

struct MissionResultView_Previews: PreviewProvider {
    static var previews: some View {
        MissionResultAssemblerInjection().resolve()
    }
}
