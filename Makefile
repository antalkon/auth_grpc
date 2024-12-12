proto:
	protoc \
		-I proto \
		--go_out=./gen/go --go_opt=paths=source_relative \
		--go-grpc_out=./gen/go --go-grpc_opt=paths=source_relative \
		proto/sso/sso.proto

run:
	go run sso/cmd/sso/main.go --config=./sso/config/local.yaml   