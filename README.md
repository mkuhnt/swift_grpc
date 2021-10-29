# grpc_swift

A description of this package.

protoc service.proto \
--proto_path=PB \
--plugin=./Bin/protoc-gen-swift \
--swift_opt=Visibility=Public \
--swift_out=Sources/grpc_swift \
--plugin=./Bin/protoc-gen-grpc-swift \
--grpc-swift_opt=Visibility=Public \
--grpc-swift_out=Sources/grpc_swift
