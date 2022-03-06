.PHONY: setup
setup:
	bash scripts/setup.sh

.PHONY: deploy
deploy:
	bash scripts/deploy.sh

.PHONY: plan
plan:
	bash scripts/plan.sh

.PHONY: destroy
destroy:
	bash scripts/destroy.sh
