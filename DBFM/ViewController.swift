//
//  ViewController.swift
//  DBFM
//
//  Created by kaitouLee on 16/7/14.
//  Copyright © 2016年 kaitou Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate,HttpProtocol {
//EkoImage组件歌曲封面
    @IBOutlet weak var iv: Ekolmage!
    //背景
    @IBOutlet weak var bg: UIImageView!
    //歌曲列表
    @IBOutlet weak var tv: UITableView!
    
    //网络操作类的实例
    var eHttp:HttpProtocol = HttpProtocol()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iv.onRotation()
        //设置背景模糊效果
        let blurEffect = UIBlurEffect(style:UIBlurEffectStyle.Light)
        //效果视图来承载
        let blurView = UIVisualEffectView(effect:blurEffect)
        //模糊效果的尺寸
        blurView.frame.size = CGSize(width: view.frame.width, height: view.frame.height)
        bg.addSubview(blurView)
        
        //设置tbaleView的数据源和代理
        tv.dataSource = self
        tv.delegate = self
        
        
        // 为网络操作类设置代理
        eHttp.delegate = self
        //获取频道数据
        eHttp.onSearch("http://www.douban.com/j/app/radio/channels")
    }

    //设置tableView的数据行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    //配置tableView的单元格cell
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tv.dequeueReusableCellWithIdentifier("douban")! as UITableViewCell
        //设置cell的标题
        cell.textLabel?.text = "标题\(indexPath.row)"
        //设置cell的子标题
        cell.detailTextLabel?.text = "子标题\(indexPath.row)"
        //设置素略图
        cell.imageView?.image = UIImage(named: "thumb")
        return cell
    }
    
    func didRecieveResults(results: AnyObject) {
        <#code#>
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

