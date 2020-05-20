import Reachability

public final class ALInternetControl {
    
    private let reachability = try! Reachability()
    private var connectionErrorVC: UIViewController
    
    public init(errorVC: UIViewController) {
        self.connectionErrorVC = errorVC
        startObserver()
    }
    
    public func stopObserver() {
        reachability.stopNotifier()
    }
    
    private func startObserver() {
        reachability.whenReachable = { [unowned self] reachability in
            if reachability.connection == .wifi {
                print("Reachable via WiFi")
            } else {
                print("Reachable via Cellular")
            }
            self.hideErrorVC()
        }
        reachability.whenUnreachable = { [unowned self] _ in
            print("Not reachable")
            self.displayErrorVC()
        }
        
        do {
            try reachability.startNotifier()
        } catch {
            print("Unable to start notifier")
        }
    }
    
    private func displayErrorVC() {
        guard let rootVC = UIApplication.shared.keyWindow?.rootViewController else {
            return
        }
        connectionErrorVC.modalPresentationStyle = .overFullScreen
        rootVC.present(connectionErrorVC, animated: false, completion: nil)
    }
    
    private func hideErrorVC() {
        connectionErrorVC.dismiss(animated: false, completion: nil)
    }
}
