.PHONY: build
build: node

.PHONY: run
run: build kill
	./bin/cgnode

.PHONY: kill
kill:
	-killall cgnode

.PHONY: node
node:
	go build $(RACE) -o bin/cgnode ./main

.PHONY: package-all
package-all:  
	bash ./package.sh -p 'linux darwin windows'

.PHONY: clean
clean:
	rm bin/cgnode
