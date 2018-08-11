//  Layout.swift
//  Created by Vladimir Roganov on 13/07/2018.

import UIKit

extension UIView {
    
    var autoConstraints: Bool {
        get {
            return translatesAutoresizingMaskIntoConstraints
        }
        set {
            translatesAutoresizingMaskIntoConstraints = newValue
        }
    }
    
    var top: NSLayoutYAxisAnchor {
        return topAnchor
    }
    
    var bottom: NSLayoutYAxisAnchor {
        return bottomAnchor
    }
    
    var centerY: NSLayoutYAxisAnchor {
        return centerYAnchor
    }
    
    var left: NSLayoutXAxisAnchor {
        return leftAnchor
    }
    
    var right: NSLayoutXAxisAnchor {
        return rightAnchor
    }
    
    var centerX: NSLayoutXAxisAnchor {
        return centerXAnchor
    }
    
    var a_width: NSLayoutDimension {
        return widthAnchor
    }
    
    var a_height: NSLayoutDimension {
        return heightAnchor
    }
    
    func right(to: NSLayoutAnchor<NSLayoutXAxisAnchor>, offset: CGFloat = 0.0) {
        right.constraint(equalTo: to, constant: offset).isActive = true
    }
    
    func left(to: NSLayoutAnchor<NSLayoutXAxisAnchor>, offset: CGFloat = 0.0) {
        left.constraint(equalTo: to, constant: offset).isActive = true
    }
    
    func top(to: NSLayoutAnchor<NSLayoutYAxisAnchor>, offset: CGFloat = 0.0) {
        top.constraint(equalTo: to, constant: offset).isActive = true
    }
    
    func bottom(to: NSLayoutAnchor<NSLayoutYAxisAnchor>, offset: CGFloat = 0.0) {
        bottom.constraint(equalTo: to, constant: offset).isActive = true
    }
    
    func centerX(to: NSLayoutAnchor<NSLayoutXAxisAnchor>, offset: CGFloat = 0.0) {
        centerX.constraint(equalTo: to, constant: offset).isActive = true
    }
    
    func centerY(to: NSLayoutAnchor<NSLayoutYAxisAnchor>, offset: CGFloat = 0.0) {
        centerY.constraint(equalTo: to, constant: offset).isActive = true
    }
    
    func width(to: NSLayoutAnchor<NSLayoutDimension>, offset: CGFloat = 0.0) {
        a_width.constraint(equalTo: to, constant: offset).isActive = true
    }
    
    func width(to: CGFloat) {
        a_width.constraint(equalToConstant: to).isActive = true
    }
    
    func height(to: NSLayoutAnchor<NSLayoutDimension>, offset: CGFloat = 0.0) {
        a_height.constraint(equalTo: to, constant: offset).isActive = true
    }
    
    func height(to: CGFloat) {
        a_height.constraint(equalToConstant: to).isActive = true
    }
    
    func snap(to: UIView, offset: CGFloat = 0.0) {
        bottom(to: to.bottom, offset: -offset)
        right(to: to.right, offset: -offset)
        left(to: to.left, offset: offset)
        top(to: to.top, offset: offset)
    }
}
