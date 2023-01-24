.PHONY: node-deps go-deps deps gen check-gen add-license check-license spellcheck shellcheck salus check-valid
ADDLICENSE_IGNORE=-ignore ".github/**/*"
LICENCE_SCRIPT=addlicense -c "BlockCypher" -l "apache" -v ${ADDLICENSE_IGNORE}

node-deps:
	npm install -g @openapitools/openapi-generator-cli
	npm install -g @apidevtools/swagger-cli

go-deps:
	go install github.com/google/addlicense@latest
	go install github.com/client9/misspell/cmd/misspell@latest
	echo `go env GOPATH`/bin >> ${GITHUB_PATH}

deps: node-deps go-deps

gen:
	openapi-generator-cli generate -g go -i api.yaml -o build

check-valid:
	openapi-generator-cli validate -i api.yaml

check-gen: | gen
	git diff --exit-code

add-license:
	${LICENCE_SCRIPT} .

check-license:
	${LICENCE_SCRIPT} -check .

spellcheck:
	misspell -error .

shellcheck:
	shellcheck codegen.sh

bundle:
	swagger-cli bundle api.yaml -o api.json

salus:
	docker run --rm -t -v ${PWD}:/home/repo coinbase/salus

release: check-valid shellcheck spellcheck check-gen check-license salus