//
//  BaseViewController.swift
//  Swift5 NewsXML
//
//  Created by 平林宏淳 on 2020/05/31.
//  Copyright © 2020 Hiroaki_Hirabayashi. All rights reserved.
//

import UIKit
import SegementSlide

class BaseViewController: SegementSlideDefaultViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        //SegementSlideで必要
        reloadData()

        //開きたいタブのIndexを設定する
        defaultSelectedIndex = 0



//        scrollToSlide(at: 0, animated: true )

    }
    
    //ヘッダー画面作成
    override func segementSlideHeaderView() -> UIView? {
        
        let headerView = UIImageView()
        let headerHeight: CGFloat
        //タップなどのイベントを有効にするかどうか
        headerView.isUserInteractionEnabled = true
        //画像の表示位置
        headerView.contentMode = .scaleAspectFill
        headerView.image = UIImage(named: "header")
        //AutoresizingMaskの設定値をAuto Layoutの制約に変換するか
        //大抵自分で追加する制約とコンフリクトするため、基本はfalse
        headerView.translatesAutoresizingMaskIntoConstraints = false
        //端末によってヘッダーの高さを変える
        if #available(iOS 13.5, *) {
            
            headerHeight = view.bounds.height/4 + view.safeAreaInsets.top
                
            }else{
                
                headerHeight = view.bounds.height/4 + topLayoutGuide.length
                
            }
        //オートレイアウト
            headerView.heightAnchor.constraint(equalToConstant: headerHeight).isActive = true
            return headerView
            
        }
    
    //タブとタイトル
    override var titlesInSwitcher: [String] {


        return ["TOP","Abema","Yahoo","IT","Buzz","CNN",]
        
    }

    override func segementSlideContentViewController(at index: Int) -> SegementSlideContentScrollViewDelegate? {


        switch index {
        case 0:
            return Page1ViewController()
        case 1:
            return Page2ViewController()
        case 2:
            return Page3ViewController()
        case 3:
            return Page4ViewController()
        case 4:
            return Page5ViewController()
        case 5:
            return Page6ViewController()
            
        default: return Page1ViewController()
            
            
        
        }
    }
        
    
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


