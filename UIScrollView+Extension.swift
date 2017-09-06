//
//  UIScrollView+Extension.swift
//  Shoaib
//
//  Created by Shoaib Sarwar Cheema on 19/10/2016.
//  Copyright © Arhamsoft. All rights reserved.
//

import UIKit

extension UIScrollView {
    func scrollToBottom(animated: Bool) {
        self.setContentOffset(CGPoint(x: 0, y: max(self.contentSize.height - self.bounds.size.height, 0) ), animated: animated)

    }
}
