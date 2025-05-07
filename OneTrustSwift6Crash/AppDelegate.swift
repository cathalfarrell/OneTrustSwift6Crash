//
//  AppDelegate.swift
//  OneTrustSwift6Crash
//
//  Created by Cathal Farrell on 07/05/2025.
//

import UIKit
@preconcurrency import OTPublishersHeadlessSDK


class AppDelegate: NSObject, UIApplicationDelegate {
    
    let oneTrust =  OTPublishersHeadlessSDK.shared
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        // Custom setup after app launch
        print("App did finish launching")
        initialiseOTPublishersHeadlessSDK()
        return true
    }

    func initialiseOTPublishersHeadlessSDK() {
        
        print("Initialising OneTrust SDK")
        
            oneTrust.startSDK(
                storageLocation: "cdn.cookielaw.org",
                domainIdentifier: "3598fb78-0000-1111-2222-83ee558d6e87",
                languageCode: "en-ie",
                params: nil,
                loadOffline: false,
                completionHandler: { response in
                        print("status: \(response.status)")
                        print("result: \(response.responseString ?? "")")
                        print("error: \(String(describing: response.error))")
                }
            )
    }
}
