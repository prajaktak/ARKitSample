//
//  Drone.swift
//  ARKitSampleProject
//
//  Created by Prajakta Kulkarni on 2/10/18.
//  Copyright © 2018 Prajakta Kulkarni. All rights reserved.
//

import Foundation
import ARKit

class Drone: SCNNode {
    func loadModel() {
        guard let virtualObjectScene = SCNScene(named: "Drone.scn") else { return }
        let wrapperNode = SCNNode()
        for child in virtualObjectScene.rootNode.childNodes {
            wrapperNode.addChildNode(child)
        }
        addChildNode(wrapperNode)
    }
    
}
