//  Layout.swift
//  Created by Vladimir Roganov on 13/07/2018.

import UIKit

public extension UIView {
    
    public var autoConstraints: Bool {
        get {
            return translatesAutoresizingMaskIntoConstraints
        }
        set {
            translatesAutoresizingMaskIntoConstraints = newValue
        }
    }
    
    public var top: NSLayoutYAxisAnchor {
        return topAnchor
    }
    
    public var bottom: NSLayoutYAxisAnchor {
        return bottomAnchor
    }
    
    public var centerY: NSLayoutYAxisAnchor {
        return centerYAnchor
    }
    
    public var left: NSLayoutXAxisAnchor {
        return leftAnchor
    }
    
    public var right: NSLayoutXAxisAnchor {
        return rightAnchor
    }
    
    public var centerX: NSLayoutXAxisAnchor {
        return centerXAnchor
    }
    
    public var a_width: NSLayoutDimension {
        return widthAnchor
    }
    
    public var a_height: NSLayoutDimension {
        return heightAnchor
    }
    
    public func right(to: NSLayoutAnchor<NSLayoutXAxisAnchor>, offset: CGFloat = 0.0) {
        right.constraint(equalTo: to, constant: offset).isActive = true
    }
    
    public func left(to: NSLayoutAnchor<NSLayoutXAxisAnchor>, offset: CGFloat = 0.0) {
        left.constraint(equalTo: to, constant: offset).isActive = true
    }
    
    public func top(to: NSLayoutAnchor<NSLayoutYAxisAnchor>, offset: CGFloat = 0.0) {
        top.constraint(equalTo: to, constant: offset).isActive = true
    }
    
    public func bottom(to: NSLayoutAnchor<NSLayoutYAxisAnchor>, offset: CGFloat = 0.0) {
        bottom.constraint(equalTo: to, constant: offset).isActive = true
    }
    
    public func centerX(to: NSLayoutAnchor<NSLayoutXAxisAnchor>, offset: CGFloat = 0.0) {
        centerX.constraint(equalTo: to, constant: offset).isActive = true
    }
    
    public func centerY(to: NSLayoutAnchor<NSLayoutYAxisAnchor>, offset: CGFloat = 0.0) {
        centerY.constraint(equalTo: to, constant: offset).isActive = true
    }
    
    public func width(to: NSLayoutAnchor<NSLayoutDimension>, offset: CGFloat = 0.0) {
        a_width.constraint(equalTo: to, constant: offset).isActive = true
    }
    
    public func width(to: CGFloat) {
        a_width.constraint(equalToConstant: to).isActive = true
    }
    
    public func height(to: NSLayoutAnchor<NSLayoutDimension>, offset: CGFloat = 0.0) {
        a_height.constraint(equalTo: to, constant: offset).isActive = true
    }
    
    public func height(to: CGFloat) {
        a_height.constraint(equalToConstant: to).isActive = true
    }
    
    public func snap(to: UIView, offset: CGFloat = 0.0) {
        bottom(to: to.bottom, offset: -offset)
        right(to: to.right, offset: -offset)
        left(to: to.left, offset: offset)
        top(to: to.top, offset: offset)
    }
}
