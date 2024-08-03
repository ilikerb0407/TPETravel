/// <#Brief Description#> 
///
/// Created by TWINB00591630 on 2024/8/3.
/// Copyright © 2024 Cathay United Bank. All rights reserved.

import UIKit
import Combine

internal class HomeViewController: UIViewController {    
    
	var viewModel: HomeViewModel

	init() {
		viewModel = .init()
		super.init(nibName: nil, bundle: nil)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}	
						    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }    
}