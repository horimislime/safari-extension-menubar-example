//
//  SafariExtensionHandler.swift
//  MenubarExample Extension
//
//  Created by horimislime on 2019/02/09.
//  Copyright © 2019 horimislime. All rights reserved.
//

import SafariServices

class SafariExtensionHandler: SFSafariExtensionHandler {
    
    override func messageReceived(withName messageName: String, from page: SFSafariPage, userInfo: [String : Any]?) {
        
        // WHen injected script calls safari.extension.dispatchMessage, the message will come here
        NSLog("Message received: %@", messageName);
        
        guard let href = userInfo?["href"] as? String else {
            NSLog("Invalid userInfo");
            return
        }
        NSPasteboard.general.clearContents()
        NSPasteboard.general.setString(href, forType: .string)
        NSLog("Saved '%@' to clipboard", href)
    }
    
    override func toolbarItemClicked(in window: SFSafariWindow) {
        NSLog("The extension's toolbar item was clicked!")
        
        // Request injected script a message to send location.href
        window.getActiveTab { currentTab in
            currentTab!.getActivePage { currentPage in
                currentPage!.dispatchMessageToScript(withName: "getHref", userInfo: nil)
            }
        }
        
        // You have an option to get the current page's URL without using injected scripts
        //        window.getActiveTab { currentTab in
        //            currentTab!.getActivePage { currentPage in
        //                currentPage!.getPropertiesWithCompletionHandler { properties in
        //                    let urlString = properties!.url!.absoluteString
        //                    NSPasteboard.general.clearContents()
        //                    NSPasteboard.general.setString(urlString, forType: .string)
        //                    NSLog("Saved '%@' to clipboard", urlString)
        //                }
        //            }
        //        }
    }
}
