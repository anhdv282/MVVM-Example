//
//  CenterTextLayer.swift
//  MVVM Example
//
//  Created by Viet Anh Dang on 6/22/20.
//  Copyright © 2020 Cadory. All rights reserved.
//

#if os(iOS) || os(tvOS)
  import UIKit
#elseif os(OSX)
  import AppKit
#endif
import Foundation

class CenterTextLayer: CATextLayer {

    public override init() {
        super.init()
    }

    public override init(layer: Any) {
        super.init(layer: layer)
    }

    public required init(coder aDecoder: NSCoder) {
        super.init(layer: aDecoder)
    }

    public override func draw(in ctx: CGContext) {
        #if os(iOS) || os(tvOS)
          let multiplier = CGFloat(1)
        #elseif os(OSX)
          let multiplier = CGFloat(-1)
        #endif
        let yDiff = (bounds.size.height - ((string as? NSAttributedString)?.size().height ?? fontSize)) / 2 * multiplier

        ctx.saveGState()
        ctx.translateBy(x: 0.0, y: yDiff - 2)
        super.draw(in: ctx)
        ctx.restoreGState()
    }
}
