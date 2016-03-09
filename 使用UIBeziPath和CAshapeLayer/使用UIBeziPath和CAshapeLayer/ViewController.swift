//
//  ViewController.swift
//  使用UIBeziPath和CAshapeLayer
//
//  Created by rayootech on 16/3/6.
//  Copyright © 2016年 rayootech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var layer=CAShapeLayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //绘制矩形
//        //绘图一个简单的矩形
//        let layer=CAShapeLayer()
//        layer.frame=CGRectMake(110, 100, 150, 100)
//        layer.backgroundColor=UIColor.blackColor().CGColor
//        view.layer.addSublayer(layer)
//        
//        //利用UIBezierPath绘制简单的矩形
//        let path=UIBezierPath(rect: CGRectMake(110, 100, 150, 100))
//        let layer=CAShapeLayer()
//        layer.path=path.CGPath
//        //填充颜色
//        layer.fillColor=UIColor.blackColor().CGColor
//        //边框颜色
//        layer.strokeColor=UIColor.redColor().CGColor
//        view.layer.addSublayer(layer)
        
        
//        //绘制圆形
//        let path=UIBezierPath(roundedRect: CGRectMake(100, 50, 100, 100), cornerRadius: 50)
//        let layer=CAShapeLayer()
//        layer.path=path.CGPath
//        layer.fillColor=UIColor.blackColor().CGColor
//        layer.strokeColor=UIColor.greenColor().CGColor
//        view.layer.addSublayer(layer)
//        
//        //制定起始角和半径画圆
//        let radius:CGFloat=60.0
//        let startAngle:CGFloat=0.0
//        let endAngle:CGFloat=CGFloat(M_PI*2)
//        let path=UIBezierPath(arcCenter: view.center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
//        let layer=CAShapeLayer()
//        layer.path=path.CGPath
//        layer.fillColor=UIColor.blackColor().CGColor
//        layer.strokeColor=UIColor.greenColor().CGColor
//        view.layer.addSublayer(layer)
        
        
//        画弧1
//        let startPoint=CGPointMake(50, 300)
//        let endPoint=CGPointMake(300, 300)
//        let controlPoint=CGPointMake(170, 50)
//        
//        let layer1=CALayer()
//        layer1.frame=CGRectMake(startPoint.x, startPoint.y, 5, 5)
//        layer1.backgroundColor=UIColor.redColor().CGColor
//        
//        let layer2=CALayer()
//        layer2.frame=CGRectMake(endPoint.x, endPoint.y, 5, 5)
//        layer2.backgroundColor=UIColor.redColor().CGColor
//        
//        let layer3=CALayer()
//        layer3.frame=CGRectMake(controlPoint.x, controlPoint.y, 5, 5)
//        layer3.backgroundColor=UIColor.redColor().CGColor
//        
//        let path=UIBezierPath()
//        let layer=CAShapeLayer()
//        path.moveToPoint(startPoint)
//        path.addQuadCurveToPoint(endPoint, controlPoint: controlPoint)
//        
//        layer.path=path.CGPath
//        layer.fillColor=UIColor.clearColor().CGColor
//        layer.strokeColor=UIColor.blackColor().CGColor
//        
//        view.layer.addSublayer(layer)
//        view.layer.addSublayer(layer1)
//        view.layer.addSublayer(layer2)
//        view.layer.addSublayer(layer3)
        
        
//        //画弧2
//        let startPoint=CGPointMake(50, 300)
//        let endPoint=CGPointMake(300, 300)
//        let controlPoint1=CGPointMake(120, 180)
//        let controlPoint2=CGPointMake(220, 420)
//        
//        let layer1=CALayer()
//        layer1.frame=CGRectMake(startPoint.x, startPoint.y, 5, 5)
//        layer1.backgroundColor=UIColor.redColor().CGColor
//        
//        let layer2=CALayer()
//        layer2.frame=CGRectMake(endPoint.x, endPoint.y, 5, 5)
//        layer2.backgroundColor=UIColor.redColor().CGColor
//        
//        let layer3=CALayer()
//        layer3.frame=CGRectMake(controlPoint1.x, controlPoint1.y, 5, 5)
//        layer3.backgroundColor=UIColor.redColor().CGColor
//        
//        let layer4=CALayer()
//        layer4.frame=CGRectMake(controlPoint2.x, controlPoint2.y, 5, 5)
//        layer4.backgroundColor=UIColor.redColor().CGColor
//        
//        let path=UIBezierPath()
//        let layer=CAShapeLayer()
//        path.moveToPoint(startPoint)
//        path.addCurveToPoint(endPoint, controlPoint1:controlPoint1, controlPoint2: controlPoint2)
//        
//        layer.path=path.CGPath
//        layer.fillColor=UIColor.clearColor().CGColor
//        layer.strokeColor=UIColor.blackColor().CGColor
//        
//        view.layer.addSublayer(layer)
//        view.layer.addSublayer(layer1)
//        view.layer.addSublayer(layer2)
//        view.layer.addSublayer(layer3)
//        view.layer.addSublayer(layer4)
       
        
        let finalSize=CGSizeMake(CGRectGetWidth(view.frame), 400)
        let layerHeight=finalSize.height*0.2
        let layer=CAShapeLayer()
        let bezier=UIBezierPath()
        bezier.moveToPoint(CGPointMake(0, finalSize.height-layerHeight))
        bezier.addLineToPoint(CGPointMake(0, finalSize.height-1))
        bezier.addLineToPoint(CGPointMake(finalSize.width, finalSize.height-1))
        bezier.addLineToPoint(CGPointMake(finalSize.width, finalSize.height-layerHeight))
        bezier.addQuadCurveToPoint(CGPointMake(0, finalSize.height-layerHeight) ,controlPoint: CGPointMake(finalSize.width/2,(finalSize.height-layerHeight)-40))
        layer.path=bezier.CGPath
        layer.fillColor=UIColor.blackColor().CGColor
        view.layer.addSublayer(layer)
        
    }
    
    private func animations1(){
    
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue=0
        animation.toValue=1
        animation.duration=2
        layer.addAnimation(animation, forKey: "")
    }
    
    private func animations2(){
        
        layer.strokeStart=0.5
        layer.strokeEnd=0.5;
        
        let animation=CABasicAnimation(keyPath: "strokeStart")
        animation.fromValue=0.5
        animation.toValue=0
        animation.duration=2
        
        let animation2=CABasicAnimation(keyPath: "strokeEnd")
        animation2.fromValue=0.5
        animation2.toValue=1
        animation2.duration=2

        
        layer.addAnimation(animation, forKey: "")
        layer.addAnimation(animation2, forKey: "")
    }
    
    private func animations3(){
        
        let animation = CABasicAnimation(keyPath: "lineWidth")
        animation.fromValue=0
        animation.toValue=10
        animation.duration=2
        layer.addAnimation(animation, forKey: "")
        
    }
    

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let startPoint=CGPointMake(50, 300)
        let endPoint=CGPointMake(300, 300)
        let controlPoint1=CGPointMake(120, 180)
        let controlPoint2=CGPointMake(220, 420)

        let path=UIBezierPath()
        let layer2=CAShapeLayer()
        path.moveToPoint(startPoint)
        path.addCurveToPoint(endPoint, controlPoint1:controlPoint1, controlPoint2: controlPoint2)

        layer2.path=path.CGPath
        layer2.fillColor=UIColor.clearColor().CGColor
        layer2.strokeColor=UIColor.blackColor().CGColor
        
        layer=layer2
        animations3()
        view.layer.addSublayer(layer)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

