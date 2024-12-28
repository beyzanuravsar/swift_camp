import UIKit

final class HomeWireframe: BaseWireframe<LazyHostingViewController<HomeView>> {

    // MARK: - Module setup -

    init() {
        let moduleViewController = LazyHostingViewController<HomeView>(isNavigationBarHidden: true)
        super.init(viewController: moduleViewController)

        let presenter = HomePresenter(wireframe: self)
        moduleViewController.rootView = HomeView(presenter: presenter)
    }
}

// MARK: - Extensions -

extension HomeWireframe: HomeWireframeInterface {

    func showVStack() {
        let vStackWireframe = VStackWireframe()
        navigationController?.pushWireframe(vStackWireframe)
    }
    
    func showZStack() {
        let zStackWireframe = ZStackWireframe()
        navigationController?.pushWireframe(zStackWireframe)
    }

    func showContentView() {
        let contentWireframe = ContentWireframe()
        navigationController?.pushWireframe(contentWireframe)
    }
    
    func showColorPicker() {
        let colorPickerWireframe = ColorPickerWireframe()
        navigationController?.pushWireframe(colorPickerWireframe)
    }
    
    func showRectangle() {
        let rectangleWireframe = RectangleWireframe()
        navigationController?.pushWireframe(rectangleWireframe)
    }
    func showHStack() {
        let hStackWireframe = HStackWireframe()
        navigationController?.pushWireframe(hStackWireframe)
    }
    
    func showFrame() {
        let frameWireframe = FrameWireframe()
        navigationController?.pushWireframe(frameWireframe)
    }
}
