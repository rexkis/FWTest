//
//  ViewController.swift
//  FWTest
//
//  Created by Igor Kutovoy on 25.11.2019.
//  Copyright © 2019 Igor Kutovoy. All rights reserved.
//

import Cocoa
import Drawer

class ViewController: NSViewController {
    
    @IBOutlet weak var graphView: GraphView!
    
    @IBOutlet weak var seg: NSSegmentedControl!
    
    @IBAction func chooseAxes(_ sender: NSSegmentedControl) {
        
        graphView.axesProfile = sender.indexOfSelectedItem
    }
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initial Selected Segment
        seg.selectedSegment = 0
    }
}

