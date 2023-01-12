version := "1.0.3"

fmt-python:
    @autopep8 --aggressive --recursive --in-place ./wf_fastapi_auth0/


lint:
    @pylint wf_fastapi_auth0

publish: fmt-python lint
    echo "{{version}}" > VERSION
    @python3 setup.py sdist
    @python3 -m twine upload dist/*
