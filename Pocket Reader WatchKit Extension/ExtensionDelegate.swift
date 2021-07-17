//
//  ExtensionDelegate.swift
//  Pocket Reader WatchKit Extension
//
//  Created by Татьяна Кочетова on 25.06.2021.
//

import WatchKit
import WatchConnectivity

class ExtensionDelegate: NSObject, WKExtensionDelegate {

    func applicationDidFinishLaunching() {
        setupWatchConnectivity()
    }
    
    func setupWatchConnectivity(){
        if WCSession.isSupported() {
            let session = WCSession.default
            session.delegate = self
            session.activate()
        }
    }
}



extension ExtensionDelegate: WCSessionDelegate {
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        if let error = error {
            print("WC Session activation failed with error: \(error.localizedDescription)")
            return
        }
        print("WC Session activated with state: \(activationState.rawValue)")
    }
    

}
