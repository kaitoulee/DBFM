//
//  Ekolmage.swift
//  DBFM
//
//  Created by kaitouLee on 16/7/14.
//  Copyright © 2016年 kaitou Lee. All rights reserved.
//

import UIKit

class Ekolmage: UIImageView {
//构造方法
    required init?(coder aDecoder: NSCoder) {
        //需要执行父类的构造方法
        super.init(coder: aDecoder)
        
        //设置圆角
        self.clipsToBounds = true
        //图片圆角层的半径层 只要设置为这个组件的大小的宽一半就行了
        self.layer.cornerRadius = self.frame.size.width/2
        
        //边框
        self.layer.borderWidth = 4
        self.layer.borderColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.7).CGColor
    }
    //旋转
    func onRotation(){
        //动画实例关键字
        let animation = CABasicAnimation(keyPath: "transform.rotation")
        //初始值
        animation.fromValue = 0.0
        //结束值
        animation.toValue = M_PI * 2
        //动画执行时间
        animation.duration = 20
        //动画重复次数
        animation.repeatCount = 10000
        //动画实例
        self.layer.addAnimation(animation, forKey: nil)
    }
}
