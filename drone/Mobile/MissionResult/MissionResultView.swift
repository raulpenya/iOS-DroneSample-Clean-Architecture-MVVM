//
//  MissionResultView.swift
//  drone
//
//  Created by raulbot on 23/1/23.
//

import SwiftUI

struct MissionResultView: View {
    
    @ObservedObject var viewModel: MissionResultViewModel
    let router: MissionResultRouter
    
    var body: some View {
        NavigationView {
            VStack {
                Text(NSLocalizedString("mission_result_title", comment: ""))
                    .applyTitleLabelStyle()
                HStack {
                    Text(NSLocalizedString("initial_position_text", comment: ""))
                        .applySubtitleLabelStyle()
                    Text(viewModel.getInitialPositionText())
                        .applyInfoLabelStyle()
                }
                HStack {
                    Text(NSLocalizedString("plateau_text", comment: ""))
                        .applySubtitleLabelStyle()
                    Text(viewModel.getPlateauText())
                        .applyInfoLabelStyle()
                }
                HStack {
                    Text(NSLocalizedString("instructions_text", comment: ""))
                        .applySubtitleLabelStyle()
                    Text(viewModel.getInstructionsText())
                        .applyInfoLabelStyle()
                }
                Text(viewModel.getResultText())
                    .applyResultLabelStyle()
                Button(NSLocalizedString("set_custom_mission_text", comment: "")) {
                    viewModel.editMissionButtonPressed()
                }.padding(.vertical, 16).buttonStyle(EditButtonStyle())
                Button(NSLocalizedString("execute_mission_text", comment: "")) {
                    viewModel.executeMissionButtonPressed()
                }.padding(.vertical, 16).buttonStyle(ActionButtonStyle())
            }.sheet(isPresented: $viewModel.shouldShowMissionEditor) {
                router.destination(MissionEditorDependecies())
            }
        }
    }
}

struct MissionResultView_Previews: PreviewProvider {
    static var previews: some View {
        MissionResultAssemblerInjection().resolve()
    }
}
