//
//  SafariExtensionViewController.swift
//  MenubarExample Extension
//
//  Created by horimislime on 2019/02/09.
//  Copyright © 2019 horimislime. All rights reserved.
//

import SafariServices

class SafariExtensionViewController: SFSafariExtensionViewController {
    
    static let shared: SafariExtensionViewController = {
        let shared = SafariExtensionViewController()
        shared.preferredContentSize = NSSize(width:320, height:240)
        return shared
    }()

}
