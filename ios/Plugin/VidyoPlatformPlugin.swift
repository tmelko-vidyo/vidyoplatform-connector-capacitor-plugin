import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(VidyoPlatformPlugin)
public class VidyoPlatformPlugin: CAPPlugin {

    var initialized = false
    
    @objc func openConference(_ call: CAPPluginCall) {
        if !initialized {
            self.initialized = VCConnectorPkg.vcInitialize()
        }
        
        print("VidyoClient has been successfully intiialized.")
        
        let value = call.getString("value") ?? ""
        call.resolve()
    }
    
    @objc func closeConference(_ call: CAPPluginCall) {
        call.resolve()
    }
    
    @objc func connect(_ call: CAPPluginCall) {
        call.resolve()
    }
    
    @objc func disconnect(_ call: CAPPluginCall) {
        call.resolve()
    }
    
    @objc func setPrivacy(_ call: CAPPluginCall) {
        call.resolve()
    }
    
    @objc func cycleCamera(_ call: CAPPluginCall) {
        call.resolve()
    }
}
