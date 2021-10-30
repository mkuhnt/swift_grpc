# grpc_swift

Prerequisite: have `protoc` installed (e.g. via `brew install protobuf`)

## Get swift plugins

First clone the grpc-swift repo 
`git clone https://github.com/grpc/grpc-swift.git && cd grpc-swift`

Then build the plugins
`make plugins`

Finally copy the plugins in your PATH or somewhere else.
I copied them into the Bin directory. But mind they are built for osx-amd64.

## Re-Generate the swift code

In case you have the plugins somewhere else please change the command accordingly...

```shell
protoc service.proto \
--proto_path=PB \
--plugin=./Bin/protoc-gen-swift \
--swift_opt=Visibility=Public \
--swift_out=Sources/grpc_swift \
--plugin=./Bin/protoc-gen-grpc-swift \
--grpc-swift_opt=Visibility=Public \
--grpc-swift_out=Sources/grpc_swift
```

# Run the server

`swift run`
