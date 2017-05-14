//
//  ViewController.swift
//  ios-animating-button-menu-demo
//
//  Created by Kushida　Eiji on 2017/05/14.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var instagramButton: RoundButton!
    @IBOutlet weak var twitterButton: RoundButton!
    @IBOutlet weak var facebookButton: RoundButton!
    @IBOutlet weak var menuButton: RoundButton!

    var instagramButtonCenter: CGPoint!
    var twitterButtonCenter: CGPoint!
    var facebookButtonCenter: CGPoint!
    var isSelectedButton = false

    override func viewDidLoad() {
        super.viewDidLoad()

        enableAutoLayout()
        saveDefaultButtonPosision()
        moveMenuButtonPosision()
        hiddenButton()
    }

    //MARK : - Action
    @IBAction func didTapSelectMenu(_ sender: RoundButton) {
        selectedTargetMenu()
    }

    @IBAction func didTapSelectedInstagram(_ sender: RoundButton) {
        selectedTargetMenu()
    }
    
    @IBAction func didTapSelectedTwitter(_ sender: RoundButton) {
        selectedTargetMenu()
    }
    
    @IBAction func didTapSelectedFacebook(_ sender: RoundButton) {
        selectedTargetMenu()
    }

    /// 該当のメニューを選択する
    private func selectedTargetMenu() {

        if isSelectedButton {

            UIView.animate(withDuration: 0.3, animations: {
                self.moveMenuButtonPosision()
                self.hiddenButton()
            })
        } else {

            UIView.animate(withDuration: 0.3, animations: {
                self.moveDefaultButtonPosision()
                self.showButton()
            })
        }
        isSelectedButton = !isSelectedButton

    }

    /// AutoLayoutを有効にする
    private func enableAutoLayout() {
        instagramButton.translatesAutoresizingMaskIntoConstraints = true
        twitterButton.translatesAutoresizingMaskIntoConstraints = true
        facebookButton.translatesAutoresizingMaskIntoConstraints = true
        menuButton.translatesAutoresizingMaskIntoConstraints = true
    }

    /// ボタンを表示する
    private func showButton() {
        instagramButton.alpha = 1
        twitterButton.alpha = 1
        facebookButton.alpha = 1
    }

    /// ボタンを非表示にする
    private func hiddenButton() {
        self.instagramButton.alpha = 0
        self.twitterButton.alpha = 0
        self.facebookButton.alpha = 0
    }

    /// ボタンの元の場所を覚えておく
    private func saveDefaultButtonPosision() {
        instagramButtonCenter = instagramButton.center
        twitterButtonCenter = twitterButton.center
        facebookButtonCenter = facebookButton.center
    }

    /// ボタンを元の場所に移動する
    private func moveDefaultButtonPosision() {
        instagramButton.center = instagramButtonCenter
        twitterButton.center = twitterButtonCenter
        facebookButton.center = facebookButtonCenter
    }

    /// ボタンをメニューの場所へ移動する
    private func moveMenuButtonPosision() {
        instagramButton.center = menuButton.center
        twitterButton.center = menuButton.center
        facebookButton.center = menuButton.center
    }
}

