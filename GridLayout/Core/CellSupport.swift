//
//  CellSupport.swift
//  SuperCustomCollection
//
//  Created by Leonardo Geus on 14/12/2017.
//  Copyright © 2017 Leonardo Geus. All rights reserved.
//

import UIKit
import MobileCoreServices

public class CellSupport: NSObject {
    

    

    public var element:Element!
    public var view:UIView!
    public var index:Int!
    
    public init(gridView:GridView,row:Int,column:Int,squaresOfHeight:Int,squaresOfWidth:Int) {
        super.init()
        let positionInfoManager = gridView.positionInfo
        
        if squaresOfWidth < 0 {
            print("CellSupport: squaresOfWidth need to be more than 0")
        } else if squaresOfHeight < 0 {
            print("CellSupport: squaresOfWidth need to be more than 0")
        } else if row < 0 {
            print("CellSupport: row need to be more than 0")
        } else if column < 0 {
            print("CellSupport: column need to be more than 0")
        } else {
        
            element = Element(row: row, column: column, squaresOfWidth: squaresOfWidth, squaresOfHeight: squaresOfHeight)
            view = UIView(frame: CGRect(x: 0, y: 0, width: (positionInfoManager?.columnSize)!*CGFloat(squaresOfWidth), height: (positionInfoManager?.columnSize)!*CGFloat(squaresOfHeight)))
            index = positionInfoManager?.getIndexForCreateCell()
        }
    }
    
    init(cellSupport:CellSupport,element:Element) {
        super.init()
        self.view = cellSupport.view
        self.element = element
        self.index = cellSupport.index
    }
}


