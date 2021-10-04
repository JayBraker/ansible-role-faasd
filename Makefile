

.PHONY: lint
lint:
	yamllint .
	ansible-lint .

.PHONY: test
test: lint
	molecule test
	
.PHONY: converge
converge: lint
	molecule converge

.PHONY: destroy
destroy:
	molecule destroy
