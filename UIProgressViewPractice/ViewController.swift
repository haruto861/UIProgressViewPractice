//
//  ViewController.swift
//  UIProgressViewPractice
//
//  Created by 松島悠人 on 2021/09/22.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var progressView: UIProgressView!
    @IBOutlet private weak var plusButton: UIButton! {
        didSet {
            plusButton.addTarget(self, action: #selector(plus), for: .touchUpInside)
        }
    }
    @IBOutlet private weak var minusButton: UIButton! {
        didSet {
            minusButton.addTarget(self, action: #selector(minus), for: .touchUpInside)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomValue()
    }
    
    @objc private func plus() {
        progressView.progress += 0.1
    }

    @objc private func minus() {
        progressView.progress -= 0.1
    }

    private func generateRandomValue() {
        let randomFloat = Float.random(in: 0 ..< 1)
        progressView.progress = randomFloat
    }
}

