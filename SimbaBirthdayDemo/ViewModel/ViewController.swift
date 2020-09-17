//
//  ViewController.swift
//  SimbaBirthdayDemo
//
//  Created by Vinh Tran on 17/9/20.
//  Copyright © 2020 Vinh Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var viewModel = BirthdayViewModel()
    
    @IBOutlet weak var currentImage: UIImageView!
    
    @IBOutlet weak var date: UILabel!

    @IBAction func btnChangeImage(_ sender: Any) {
        currentImage.image = viewModel.getNextImage()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        date.text = viewModel.getBirthday(withFormat: "dd MMMM, yyyy")
    }


}

