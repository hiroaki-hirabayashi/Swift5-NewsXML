//
//  IntroViewController.swift
//  Swift5 NewsXML
//
//  Created by 平林宏淳 on 2020/05/31.
//  Copyright © 2020 Hiroaki_Hirabayashi. All rights reserved.
//

import UIKit
import Lottie

class IntroViewController: UIViewController,UIScrollViewDelegate {

    
    @IBOutlet weak var scrollView: UIScrollView!
    var onboardArray = ["6","2","3","4","5",]
    var onboardStringArray = ["1つ目","2つ目","3つ目","4つ目","5つ目",]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //1ページづつスクロールさせる
        scrollView.isPagingEnabled = true
        setUpScroll()
        
        for i in 0...4{
            
            let animationView = AnimationView()
            let ainmation = Animation.named(onboardArray[i])
            animationView.frame = CGRect(x: CGFloat(i) * view.frame.size.width, y: 0, width: view.frame.size.width, height: view.frame.size.height)
            animationView.animation = ainmation
            animationView.contentMode = .scaleAspectFit
            animationView.loopMode = .loop
            animationView.play()
            scrollView.addSubview(animationView)
        }

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //ナビゲーションバーを隠す
        self.navigationController?.isNavigationBarHidden = true
    }
    
    func setUpScroll(){
        
        scrollView.delegate = self
        
        //scrollViewの可動領域
        scrollView.contentSize = CGSize(width: view.frame.size.width * 5, height: scrollView.frame.size.height)
        
        for i in 0...4{
            
            let onboradLabel = UILabel(frame: CGRect(x: CGFloat(i) * view.frame.size.width, y: view.frame.size.height/3, width: scrollView.frame.size.width, height: scrollView.frame.size.height))
            
            onboradLabel.font = UIFont.boldSystemFont(ofSize: 15.0)
            onboradLabel.textAlignment = .center
            onboradLabel.text = onboardStringArray[i]
            scrollView.addSubview(onboradLabel)
            
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

}
