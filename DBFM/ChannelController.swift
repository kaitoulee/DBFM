//
//  ChannelController.swift
//  DBFM
//
//  Created by kaitouLee on 16/7/14.
//  Copyright © 2016年 kaitou Lee. All rights reserved.
//

import UIKit

class ChannelController: UIViewController{
//频道列表tableView
    @IBOutlet weak var tv: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    //配置tableView数据行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    //配置cell的数据
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tv.dequeueReusableCellWithIdentifier("channel")! as UITableViewCell
        //设置cell的标题
        cell.textLabel?.text = "频道:\(indexPath.row)"
        return cell
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
