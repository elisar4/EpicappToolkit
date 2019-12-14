//  Layout.swift
//  Created by Vladimir Roganov on 13/07/2018.

import UIKit

public extension UIView {
    
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
    
    @discardableResult
    func right(to: NSLayoutAnchor<NSLayoutXAxisAnchor>, offset: CGFloat = 0.0) -> NSLayoutConstraint {
        let result = right.constraint(equalTo: to, constant: offset)
        result.isActive = true
        return result
    }
    
    @discardableResult
    func left(to: NSLayoutAnchor<NSLayoutXAxisAnchor>, offset: CGFloat = 0.0) -> NSLayoutConstraint {
        let result = left.constraint(equalTo: to, constant: offset)
        result.isActive = true
        return result
    }
    
    @discardableResult
    func top(to: NSLayoutAnchor<NSLayoutYAxisAnchor>, offset: CGFloat = 0.0) -> NSLayoutConstraint {
        let result = top.constraint(equalTo: to, constant: offset)
        result.isActive = true
        return result
    }
    
    @discardableResult
    func bottom(to: NSLayoutAnchor<NSLayoutYAxisAnchor>, offset: CGFloat = 0.0) -> NSLayoutConstraint {
        let result = bottom.constraint(equalTo: to, constant: offset)
        result.isActive = true
        return result
    }
    
    @discardableResult
    func centerX(to: NSLayoutAnchor<NSLayoutXAxisAnchor>, offset: CGFloat = 0.0) -> NSLayoutConstraint {
        let result = centerX.constraint(equalTo: to, constant: offset)
        result.isActive = true
        return result
    }
    
    @discardableResult
    func centerY(to: NSLayoutAnchor<NSLayoutYAxisAnchor>, offset: CGFloat = 0.0) -> NSLayoutConstraint {
        let result = centerY.constraint(equalTo: to, constant: offset)
        result.isActive = true
        return result
    }
    
    @discardableResult
    func width(to: NSLayoutAnchor<NSLayoutDimension>, offset: CGFloat = 0.0) -> NSLayoutConstraint {
        let result = a_width.constraint(equalTo: to, constant: offset)
        result.isActive = true
        return result
    }
    
    @discardableResult
    func width(to: CGFloat) -> NSLayoutConstraint {
        let result = a_width.constraint(equalToConstant: to)
        result.isActive = true
        return result
    }
    
    @discardableResult
    func height(to: NSLayoutAnchor<NSLayoutDimension>, offset: CGFloat = 0.0) -> NSLayoutConstraint {
        let result = a_height.constraint(equalTo: to, constant: offset)
        result.isActive = true
        return result
    }
    
    @discardableResult
    func height(to: CGFloat) -> NSLayoutConstraint {
        let result = a_height.constraint(equalToConstant: to)
        result.isActive = true
        return result
    }
    
    func snap(to: UIView, offset: CGFloat = 0.0) {
        bottom(to: to.bottom, offset: -offset)
        right(to: to.right, offset: -offset)
        left(to: to.left, offset: offset)
        top(to: to.top, offset: offset)
    }
}
