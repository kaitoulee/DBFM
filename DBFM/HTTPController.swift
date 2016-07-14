//
//  HTTPController.swift
//  DBFM
//
//  Created by kaitouLee on 16/7/14.
//  Copyright © 2016年 kaitou Lee. All rights reserved.
//

import UIKit
import Alamofire

class HTTPController: NSObject {
    //定义一个代理 获取数据后回调
    var delegate:HttpProtocol?
    
    //获取数据的地址做出一些响应 接受网址,回调代理的方法传回数据
    func onSearch(url:String) {
        Alamofire.Manager.request(Method.init())
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
//        Alamofire.manager.request(Method.GET, url).responseJSON(NSJSONReadingOptions.MutableLeaves) { (_, _, data, error) in
//            self.delegate?.didRecieveResults(data!)
//        }
    }
}
//定义http协议
protocol HttpProtocol{
    //定义一个方法 接受一个参数类型是AnyObject
    func didRecieveResults(results:AnyObject)
}