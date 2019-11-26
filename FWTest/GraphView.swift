//
//  GraphView.swift
//  FWTest
//
//  Created by Igor Kutovoy on 25.11.2019.
//  Copyright © 2019 Igor Kutovoy. All rights reserved.
//

import Cocoa
import Drawer

class GraphView: NSView {

    var axesProfile: Int = 0 {
        didSet {
            needsDisplay = true
        }
    }
    
    // MARK: - Variables (or constants) for initialization
    let chartInsets = NSEdgeInsets(top: 70, left: 60, bottom: 40, right: 40)
    let gridEnabled: Bool = true
    var axisScaleType: AxisScaleType = .lin
    var axisOrientation: AxisOrientation = .horizontal
    var axisTitle: String = ""
    
    // Previously finded X- and Y-data maximums
    let xDataMinMax = [0.05,0.92]
    let yDataMinMax = [1.67e16, 6.34e18]
    var context:CGContext?
    
    override func viewWillDraw() {
        context = NSGraphicsContext.current?.cgContext
    }

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        switch axesProfile {
        case 0:
            makeHLinVLog()
        case 1:
            makeHLogVLin()
        case 2:
            makeAllLin()
        default:
            makeAllLog()
        }
    }
    
    // MARK: - Function for Axes Testing
    func makeHLinVLog() {
        makeLinHAxis(chartInsets: chartInsets, dataMinMax: xDataMinMax)
        makeLogVAxis(chartInsets: chartInsets, dataMinMax: yDataMinMax)
    }
    func makeHLogVLin() {
        makeLogHAxis(chartInsets: chartInsets, dataMinMax: yDataMinMax)
        makeLinVAxis(chartInsets: chartInsets, dataMinMax: xDataMinMax)
    }
    func makeAllLin() {
        testXAxis(chartInsets: chartInsets, dataMinMax: xDataMinMax)
    }
    func makeAllLog() {
        testYAxis(chartInsets: chartInsets, dataMinMax: yDataMinMax)
    }
    
    
}
    

