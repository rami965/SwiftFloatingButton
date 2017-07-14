//
//  ViewController.swift
//  Map Animation
//
//  Created by MACC on 7/13/17.
//  Copyright © 2017 Rami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //main buttons
    var leftButton: Floaty?
    var rightButton: Floaty?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        addLeftButtonWithItems()
        
        addRightButtonWithItems()
//        //add floaty item
//        let paperItem = FloatyItem()
//        paperItem.size = 40.0
//        paperItem.icon = UIImage(named: "map.png")!
//        leftButton.addItem(item: paperItem)
        
        
//        leftButton.addItem("I got a handler", icon: UIImage(named: "IL_Share.png")!, handler: { item in
//            let alert = UIAlertController(title: "Hey", message: "I'm hungry...", preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "Me too", style: .default, handler: nil))
//            self.present(alert, animated: true, completion: nil)
//            leftButton.close()
//        })
        
        //////////////////////////////////////////////////////////////////////////////////////////////////

        
    }
    
    
    //add left floating point with items
    func addLeftButtonWithItems() -> Void {
        //button size
        let buttonSize = CGSize(width: 40.0, height: 40.0)
        
        //button position
        let leftButtonPosition = CGPoint(x: 20.0, y: UIScreen.main.bounds.size.height - 40.0 - 20.0)
        
        //create new button
        leftButton = Floaty(frame: CGRect(origin: leftButtonPosition, size: buttonSize))
        
        //add items
        leftButton?.addItem(icon: UIImage(named: "paper.png"), handler: {item in
            //TODO add action to the button
            self.leftButton?.close()
        })
        leftButton?.addItem(icon: UIImage(named: "face.png"), handler: {item in
            //TODO add action to the button
            self.leftButton?.close()
        })
        leftButton?.addItem(icon: UIImage(named: "lamp.png"), handler: {item in
            //TODO add action to the button
            self.leftButton?.close()
        })

        leftButton?.addItem(icon: UIImage(named: "map.png"), handler: {item in
            //TODO add action to the button
            self.leftButton?.close()
        })

        leftButton?.addItem(icon: UIImage(named: "compas.png"), handler: {item in
            //TODO add action to the button
            self.leftButton?.close()
        })

        
        //show button on screen
        self.view.addSubview(leftButton!)
    }
    
    /////////////////////////////////////////////////////////////////////////////////////////
    //add left floating point with items
    func addRightButtonWithItems() -> Void {
        //button size
        let buttonSize = CGSize(width: 40.0, height: 40.0)
        
        //button position
        let rightButtonPosition = CGPoint(x: UIScreen.main.bounds.size.width - 40.0 - 20.0, y: UIScreen.main.bounds.size.height - 40.0 - 20.0)
        
        //create new button
        rightButton = Floaty(frame: CGRect(origin: rightButtonPosition, size: buttonSize))
        
        //add items
        rightButton?.addItem("Data Analysis", icon: UIImage(named: "analysis.png"), handler: {item in
            //TODO add action to the button
            self.rightButton?.close()
        })
        
        rightButton?.addItem("Alarm Notification", icon: UIImage(named: "alarm.png"), handler: {item in
            //TODO add action to the button
            self.rightButton?.close()
        })
        
        rightButton?.addItem("Historical Route Playback", icon: UIImage(named: "historical.png"), handler: {item in
            //TODO add action to the button
            self.rightButton?.close()
        })
        
        rightButton?.addItem("Geo Fence", icon: UIImage(named: "geo.png"), handler: {item in
            //TODO add action to the button
            self.rightButton?.close()
        })
        
        //show button on screen
        self.view.addSubview(rightButton!)
    }


}

