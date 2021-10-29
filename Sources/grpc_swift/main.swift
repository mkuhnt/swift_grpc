import GRPC
import NIO


let group = MultiThreadedEventLoopGroup(numberOfThreads: 1)
defer {
    try! group.syncShutdownGracefully()
}

let server = Server.insecure(group: group)
    .withServiceProviders([Greeter()])
    .bind(host: "localhost", port: 1234)

server.map {
      $0.channel.localAddress
    }.whenSuccess { address in
      print("server started on port \(address!.port!)")
    }

_ = try server.flatMap {
      $0.onClose
    }.wait()
