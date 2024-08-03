/// <#Brief Description#>
///
/// Created by TWINB00591630 on 2024/8/3.
/// Copyright © 2024 Cathay United Bank. All rights reserved.

import Combine
import UIKit

class HomeViewController: UIViewController {
    var viewModel: HomeViewModel

    init() {
        viewModel = .init()
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}
