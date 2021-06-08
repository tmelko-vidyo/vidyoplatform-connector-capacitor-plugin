//
//  IPluginEventHandler.swift
//  Plugin
//

import Foundation

protocol IPluginEventHandler: class {

    func onInitialized(status: Bool)

    func onConnected()

    func onDisconnected(reason: String)

    func onFailure(reason: String)

    func onParticipantJoined(participant: VCParticipant)

    func onParticipantLeft(participant: VCParticipant)
}
