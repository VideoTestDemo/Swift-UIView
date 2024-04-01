//
//  ViewController.swift
//  Lesson-03 UIView
//
//  Created by Adam on 2024/3/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let view1 = UIView(frame: CGRect(x: 100, y: 200, width: 200, height: 200))
        let view2 = UIView(frame: CGRect(x: 100, y: 200, width: 100, height: 100))
        view2.backgroundColor = .red
        //设置view的背景
        view1.backgroundColor = .blue
        //给view添加标识
        view1.tag = 1000
        //添加view到视图中
        view.addSubview(view1)
        view.addSubview(view2)
        let myView = view.viewWithTag(1000)
        myView?.backgroundColor = .yellow
        //改变黄色view的层级机构，使其在红色view的前面
        view.bringSubviewToFront(view1)
        view.sendSubviewToBack(view1)
        //删除view
        //view2.removeFromSuperview()
    }


}

