import UIKit
import Swinject

public protocol Routing {
    func routeToHome(baseViewController: UIViewController?)
}

public protocol HomeFactory {
    func makeHomeViewController() -> UIViewController
}

public protocol LoginFactory {
    func makeLoginViewController() -> UIViewController
}

public class InjectionContainer {
    public static var shared = Container()
}
