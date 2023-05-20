import UIKit
import CommonModule

public class LoginModuleFactory: LoginFactory {
    public init() {}
    
    public func makeLoginViewController() -> UIViewController {
        return LoginViewController()
    }
}

class LoginViewController: UIViewController {
    
    var router = InjectionContainer.shared.resolve(Routing.self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let button = UIButton()
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.layer.cornerRadius = 20
        
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}

extension LoginViewController {
    @objc func didTapButton() {
        router?.routeToHome(baseViewController: self)
    }
}
