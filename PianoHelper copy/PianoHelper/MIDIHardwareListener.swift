//
//  MIDIHardwareListenser.swift
//  PianoHelper
//
//  Created by Peichuan Yin on 1/28/21.
//

import Foundation
import AudioKit
import CoreMIDI
import Cocoa


class MIDIHardwareListener: MIDIListener {
    
    static let instance = MIDIHardwareListener()
    
    // currently and available inputs
    var currentlySelectedInput: String = ""
    var availableInputs: [String] = Array()
    var midi = MIDI()
    
    init() {
    }
    
    func connectInputs() {
        print("connecting devices")
        for name in midi.inputNames {
            print(name)
        }
        let deviceName = midi.inputNames[0]
        midi.openInput(name: deviceName)

        midi.addListener(self)
        availableInputs = MIDIHardwareListener.listInputs()
        print("available inputs: \(availableInputs)")
    }
    
    /// - Parameters:
    ///   - noteNumber: MIDI Note number of activated note
    ///   - velocity:   MIDI Velocity (0-127)
    ///   - channel:    MIDI Channel (1-16)
    ///   - portID:     MIDI Unique Port ID
    ///   - offset:     the offset in samples that this event occurs in the buffer
    func receivedMIDINoteOn(noteNumber: MIDINoteNumber, velocity: MIDIVelocity, channel: MIDIChannel, portID: MIDIUniqueID? = nil, offset: MIDITimeStamp = 0) {
        print("received a note on")
    }
    
    func receivedMIDINoteOff(noteNumber: MIDINoteNumber, velocity: MIDIVelocity, channel: MIDIChannel, portID: MIDIUniqueID?, offset: MIDITimeStamp) {
    }
    
    func receivedMIDIController(_ controller: MIDIByte, value: MIDIByte, channel: MIDIChannel, portID: MIDIUniqueID?, offset: MIDITimeStamp) {
    }
    
    func receivedMIDIAftertouch(noteNumber: MIDINoteNumber, pressure: MIDIByte, channel: MIDIChannel, portID: MIDIUniqueID?, offset: MIDITimeStamp) {
        
    }
    
    func receivedMIDIAftertouch(_ pressure: MIDIByte, channel: MIDIChannel, portID: MIDIUniqueID?, offset: MIDITimeStamp) {
        
    }
    
    func receivedMIDIPitchWheel(_ pitchWheelValue: MIDIWord, channel: MIDIChannel, portID: MIDIUniqueID?, offset: MIDITimeStamp) {
        
    }
    
    func receivedMIDIProgramChange(_ program: MIDIByte, channel: MIDIChannel, portID: MIDIUniqueID?, offset: MIDITimeStamp) {
        
    }
    
    func receivedMIDISystemCommand(_ data: [MIDIByte], portID: MIDIUniqueID?, offset: MIDITimeStamp) {
        
    }
    
    func receivedMIDISetupChange() {
        
    }
    
    func receivedMIDIPropertyChange(propertyChangeInfo: MIDIObjectPropertyChangeNotification) {
        
    }
    
    func receivedMIDINotification(notification: MIDINotification) {
        
    }
    
}
