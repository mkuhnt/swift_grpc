import GRPC
import NIO

class Greeter: Greeter_GreeterProvider {
    var interceptors: Greeter_GreeterServerInterceptorFactoryProtocol?
    
    func greet(request: Greeter_Person, context: StatusOnlyCallContext) -> EventLoopFuture<Greeter_Greeting> {
        let response = Greeter_Greeting.with {
            $0.message = "Hello \(request.firstName) \(request.lastName)"
        }
        
        return context.eventLoop.makeSucceededFuture(response)
    }
    
    
}
