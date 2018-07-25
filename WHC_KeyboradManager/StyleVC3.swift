//
//  StyleVC3.swift
//  WHC_KeyboradManager
//
//  Created by duxiu on 2018/7/25.
//  Copyright © 2018年 henanduxiu. All rights reserved.
//

import UIKit

class StyleVC3: UIViewController {

    private lazy var stackView: WHC_StackView = WHC_StackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.edgesForExtendedLayout = []
        self.navigationItem.title = "UIView"
        /*******只需要在要处理键盘的界面创建WHC_KeyboradManager对象即可无需任何其他设置*******/
        WHC_KeyboardManager.share.addMonitorViewController(self)
        /********************* 构建UI ***********************/
        /// 设置垂直布局
        stackView.whc_Orientation = .vertical
        /// 设置子视图高度
        stackView.whc_SubViewHeight = 40
        /// 设置垂直间隙
        stackView.whc_VSpace = 20
        /// 设置子视图内边距
        stackView.whc_Edge = UIEdgeInsetsMake(16, 16, 0, 16)
        
        self.view.addSubview(stackView)
        stackView.whc_Left(0)
            .whc_Top(0)
            .whc_Right(0)
            .whc_HeightAuto()
        
        for i in 0 ..< 10 {
            let text = UITextField()
            text.backgroundColor = UIColor.init(red: 253.0 / 255, green: 246.0 / 255.0, blue: 220.0 / 255, alpha: 1)
            text.placeholder = "UITextField \(i)"
            stackView.addSubview(text)
        }
        stackView.whc_StartLayout()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    deinit {
        print("释放了")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
