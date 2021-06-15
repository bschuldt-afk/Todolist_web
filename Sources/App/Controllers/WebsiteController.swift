import Vapor
import Fluent

struct WebsiteController: RouteCollection {

    func boot(routes: RoutesBuilder) throws {
        routes.get(use: indexHandler)
    }


    func indexHandler(_ req: Request) -> EventLoopFuture<View> {
        let context = IndexContext(title: "Der Index")
        return req.view.render("index", context)
    }
} 

struct IndexContext: Content {
    let title: String

}
