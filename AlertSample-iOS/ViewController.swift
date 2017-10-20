//
//  ViewController.swift
//  AlertSample-iOS
//
//  Created by other on 2017/10/20.
//  Copyright © 2017 TakahiroTsuchiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Action
    @IBAction func showAction(_ sender: Any) {
        let alert = UIAlertController(title:"タイトル", message: "メッセージ", preferredStyle: UIAlertControllerStyle.alert)
        
        let action1 = UIAlertAction(title: "アクション１", style: UIAlertActionStyle.default, handler: {
            (action: UIAlertAction!) in
            print("アクション１をタップした時の処理")
        })
        
        let action2 = UIAlertAction(title: "アクション２", style: UIAlertActionStyle.default, handler: {
            (action: UIAlertAction!) in
            print("アクション２をタップした時の処理")
        })
        
        let action3 = UIAlertAction(title: "アクション３", style: UIAlertActionStyle.destructive, handler: {
            (action: UIAlertAction!) in
            print("アクション３をタップした時の処理")
        })
        
        let cancel = UIAlertAction(title: "キャンセル", style: UIAlertActionStyle.cancel, handler: {
            (action: UIAlertAction!) in
            print("キャンセルをタップした時の処理")
        })
        
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(action3)
        alert.addAction(cancel)
        
        self.present(alert, animated: true, completion: nil)
    }
}

