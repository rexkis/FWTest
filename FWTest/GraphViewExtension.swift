//
//  GraphViewExtension.swift
//  FWTest
//
//  Created by Igor Kutovoy on 26.11.2019.
//  Copyright © 2019 Igor Kutovoy. All rights reserved.
//

import Cocoa
import Drawer


// MARK: - Function for Axes Testing
extension GraphView {
    func makeLinHAxis(chartInsets: NSEdgeInsets, dataMinMax: [Double]) {
        let axis = LinScaleAxis(chartBounds: bounds,
                                 chartInsets: chartInsets,
                                 gridEnabled: true,
                                 dataMinMax: dataMinMax,
                                 axisScaleType: .lin,
                                 axisOrientation: .horizontal,
                                 axisTitle: "Title for Linear, Horizontal")
        axis.getAxis()
    }
    func makeLinVAxis(chartInsets: NSEdgeInsets, dataMinMax: [Double]) {
        let axis = LinScaleAxis(chartBounds: bounds,
                                 chartInsets: chartInsets,
                                 gridEnabled: true,
                                 dataMinMax: dataMinMax,
                                 axisScaleType: .lin,
                                 axisOrientation: .vertical,
                                 axisTitle: "Title for Linear, Vertical")
        axis.getAxis()
    }
    func makeLogHAxis(chartInsets: NSEdgeInsets, dataMinMax: [Double]) {
        let axis = LogScaleAxis(chartBounds: bounds,
                                 chartInsets: chartInsets,
                                 gridEnabled: true,
                                 dataMinMax: dataMinMax,
                                 axisScaleType: .log,
                                 axisOrientation: .horizontal,
                                 axisTitle: "Title for Log, Horizontal")
        axis.getAxis()
    }
    func makeLogVAxis(chartInsets: NSEdgeInsets, dataMinMax: [Double]) {
        let axis = LogScaleAxis(chartBounds: bounds,
                                 chartInsets: chartInsets,
                                 gridEnabled: true,
                                 dataMinMax: dataMinMax,
                                 axisScaleType: .log,
                                 axisOrientation: .vertical,
                                 axisTitle: "Title for Log, Vertical")
        axis.getAxis()
    }
    func testXAxis(chartInsets: NSEdgeInsets, dataMinMax: [Double]) {
        // Test: Linear, Horizontal
        var axis = LinScaleAxis(chartBounds: bounds,
                                 chartInsets: chartInsets,
                                 gridEnabled: true,
                                 dataMinMax: dataMinMax,
                                 axisScaleType: .lin,
                                 axisOrientation: .horizontal,
                                 axisTitle: "Title for horizontal axe")
        axis.getAxis()
        
        // Test: Linear, Vertical
        axis = LinScaleAxis(chartBounds: bounds,
                             chartInsets: chartInsets, gridEnabled: true,
                             dataMinMax: dataMinMax,
                             axisScaleType: .lin,
                             axisOrientation: .vertical,
                             axisTitle: "Title for vertical axe")
        axis.getAxis()
    }
    func testYAxis(chartInsets: NSEdgeInsets, dataMinMax: [Double]) {
        // Test: Linear, Horizontal
        var axis = LogScaleAxis(chartBounds: bounds,
                                 chartInsets: chartInsets,
                                 gridEnabled: true,
                                 dataMinMax: dataMinMax,
                                 axisScaleType: .log,
                                 axisOrientation: .horizontal,
                                 axisTitle: "Horizontal Y-Axis title")
        axis.getAxis()
        
        axis = LogScaleAxis(chartBounds: bounds,
                                 chartInsets: chartInsets,
                                 gridEnabled: true,
                                 dataMinMax: dataMinMax,
                                 axisScaleType: .log,
                                 axisOrientation: .vertical,
                                 axisTitle: "Vertical Y-Axis title")
        axis.getAxis()
    }
}
