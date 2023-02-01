//
//  ArrowWidget.swift
//  Arrow
//
//  Created by rni on 31/01/2023.
//  
//

import Foundation
import AppKit
import PockKit

class ArrowWidget: PKWidget {
    
    static var identifier: String = "RightArrowWidget"
    var customizationLabel: String = "Arrow"
    var view: NSView!
    
    private let key: KeySender = KeySender(keyCode: Int32(0x7C), isAux: false)
        
        required init() {
            self.view = PKButton(title: "->", maxWidth: 64, target: self, action: #selector(tap))
        }
        
        @objc private func tap() {
            key.send()
        }

    
}

extension ArrowWidget: PKScreenEdgeMouseDelegate {
    
    private var button: PKButton {
        return view as! PKButton
    }
    
    private func shouldHighlight(for location: NSPoint, in view: NSView) -> Bool {
        return button.convert(button.bounds, to: view).contains(location)
    }
    
    func screenEdgeController(_ controller: PKScreenEdgeController, mouseEnteredAtLocation location: NSPoint, in view: NSView) {
        button.isHighlighted = shouldHighlight(for: location, in: view)
    }
    
    func screenEdgeController(_ controller: PKScreenEdgeController, mouseMovedAtLocation location: NSPoint, in view: NSView) {
        button.isHighlighted = shouldHighlight(for: location, in: view)
    }
    
    func screenEdgeController(_ controller: PKScreenEdgeController, mouseClickAtLocation location: NSPoint, in view: NSView) {
        button.isHighlighted = shouldHighlight(for: location, in: view)
        if button.isHighlighted {
            tap()
        }
    }
    
    func screenEdgeController(_ controller: PKScreenEdgeController, mouseExitedAtLocation location: NSPoint, in view: NSView) {
        button.isHighlighted = false
    }
    
}
