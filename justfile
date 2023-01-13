version := "1.0.3"

fmt:
    black ./wf_fastapi_auth0/

lint:
    @pylint wf_fastapi_auth0

build:
    poetry build

publish: fmt lint build
    poetry publish
