//
//  ViewController.swift
//  StopWatch
//
//  Created by phiic on 16/12/30.
//  Copyright © 2016年 luogang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TitleLab: UILabel!
  
    @IBOutlet weak var pauseBtn: UIButton!
    @IBOutlet weak var startBtn: UIButton!
    
    
    var timer=NSTimer()
    
    var counter=0.0
    
    //开始按钮
    @IBAction func startBtn(sender: UIButton) {
        
        startBtn.enabled=false
        pauseBtn.enabled=true
        
        timer=NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.updateTime), userInfo: nil, repeats: true)
    
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    //停止按钮
    @IBAction func pauseBtn(sender: UIButton) {
        
        
        
        timer.invalidate()
        
        startBtn.enabled=true
        
        pauseBtn.enabled=false
        
        
        
        
    }
    //重置按钮
    @IBAction func resetBtn(sender: AnyObject) {
        
        
        counter=0.0
        
        TitleLab.text=String(format: "%.1f",counter)
        
        
        
        
    }
    //时间更新方法
    func updateTime()
    {
        
        counter=counter+0.1
    
       TitleLab.text=String(format: "%.1f", counter)
      
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

