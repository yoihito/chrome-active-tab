import ScriptingBridge

func toJson<T>(_ data: T) throws -> String {
    let json = try JSONSerialization.data(withJSONObject: data)
    return String(data: json, encoding: .utf8)!
}

let chromeApplication: ChromeApplication = SBApplication.init(bundleIdentifier: "com.google.Chrome")!
let chromeWindows = chromeApplication.windows!() // get the windows from application
for window in chromeWindows
{
    let chromeWindow: ChromeWindow = window as! ChromeWindow
    if (chromeWindow.visible! && chromeWindow.mode! == "normal" ) {
        let chromeTab = chromeWindow.activeTab! // get the tabs from windows
        let dict: [String: Any] = [
            "title": chromeTab.title!,
            "url": chromeTab.URL!
        ]
        print(try! toJson(dict))
        exit(0)
    }
}


