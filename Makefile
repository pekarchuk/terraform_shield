.PHONY: aws-setup
aws-setup:
	bash scripts/setup.sh

.PHONY: deploy
aws-deploy:
	bash scripts/deploy.sh --target=${target} --instance_count=${instance_count}

.PHONY: plan
aws-plan:
	bash scripts/plan.sh

.PHONY: destroy
aws-destroy:
	bash scripts/destroy.sh
