//
//  BaseViewController.swift
//  Swift5 NewsXML
//
//  Created by 平林宏淳 on 2020/05/31.
//  Copyright © 2020 Hiroaki_Hirabayashi. All rights reserved.
//

import UIKit
import SegementSlide

class BaseViewController: SegementSlideViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        reloadData()
        defaultSelectedIndex = 0


        

    }
    
    //メニュー画面作成
    override func segementSlideHeaderView() -> UIView? {
        
        let headerView = UIImageView()
        headerView.isUserInteractionEnabled = true
        headerView.contentMode = .scaleAspectFill
        headerView.image = UIImage(named: "header")
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
        let headerHeight: CGFloat
        if #available(iOS 11.0, *) {
            
            headerHeight = view.bounds.height/4 + view.safeAreaInsets.top
                
            }else{
                
                headerHeight = view.bounds.height/4 + topLayoutGuide.length
                
            }
            headerView.heightAnchor.constraint(equalToConstant: headerHeight).isActive = true
            return headerView
            
        }
    
    //タブとタイトル
    override titlesInSwitcher: [String] {
        
        return ["AAA","Nissy","Google","Amazon","Facebook","Apple",]
        
    }
    
    override func segementSlideContentViewController(at index: Int) -> SegementSlideContentScrollViewDelegate? {
        
        switch index {
        case 0:
            
        default:
            <#code#>
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


