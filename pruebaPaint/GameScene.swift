//
//  GameScene.swift
//  pruebaPaint
//
//  Created by Grace Montoya on 7/20/17.
//  Copyright © 2017 Grace Montoya. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var firstPoint:CGPoint = CGPoint(x: 0.0, y: 0.0)
    
    override func didMove(to view: SKView) {
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!.location(in: self)
        firstPoint = touch
       
        /*for t in touches {
            self.touchDown(atPoint: t.location(in: self))
            print(t.location(in:self))
        }*/
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let positionInScene = touches.first!.location(in: self)
        
        let lineNode = SKShapeNode()
        let pathToDraw = CGMutablePath()
        
        pathToDraw.move(to: CGPoint(x:firstPoint.x, y:firstPoint.y))
        pathToDraw.addLine(to: CGPoint(x:positionInScene.x, y:positionInScene.y))
        lineNode.path = pathToDraw
        lineNode.lineWidth = 2.0
        lineNode.strokeColor = UIColor.red
        
        self.addChild(lineNode)
        firstPoint = positionInScene
       
        /*for t in touches {
            self.touchMoved(toPoint: t.location(in: self))
            print(t.location(in:self))
        }*/
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
