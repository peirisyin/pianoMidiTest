//
//  ViewController.swift
//  PianoHelper
//
//  Created by Peichuan Yin on 1/28/21.
//

import Cocoa

class ViewController: NSViewController {

    private var myMIDI = MIDIHardwareListener()
    
    @IBOutlet weak var button1: NSButton!
    @IBOutlet weak var label1: NSTextField!
    @IBOutlet weak var inputDevicePopUpButton: NSPopUpButtonCell!
    // Globally accessible
    static let sharedInstance = ViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // update input devices button
        inputDevicePopUpButton.removeAllItems()
        inputDevicePopUpButton.addItems(withTitles: MIDIHardwareListener.listInputs())
//        inputDevicePopUpButton.action = #selector(inputDeviceChanged)
        inputDevicePopUpButton.target = self
        
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func onButton1Pressed(_ sender: NSButton) {
        updateLabel1(newText: "button pressed")
        myMIDI.connectInputs()
    }
    
    func updateLabel1(newText: String) {
        label1.stringValue = newText
    }
    
    
    
    
    
    
    
}

