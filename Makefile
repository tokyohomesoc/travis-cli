.SILENT :
.PHONY : travis-cli

travis-cli:
	docker build -t tokyohomesoc/travis-cli:test .
	docker images
    docker history tokyohomesoc/travis-cli:test