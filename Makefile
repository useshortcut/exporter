.PHONY: lint run test

run:
	./exporter.sh

lint:
	shellcheck exporter.sh

test:
	@[ $(shell cat ./data/categories.json | jq 'first.entity_type') = "category" ] || (echo "[FAIL] Review ./data/categories.json" && exit 1)
	@[ $(shell cat ./data/epics.json | jq 'first.entity_type') = "epic" ] || (echo "[FAIL] Review ./data/epics.json" && exit 1)
	@[ $(shell cat ./data/files.json | jq 'first.entity_type') = "file" ] || (echo "[FAIL] Review ./data/files.json" && exit 1)
	@[ $(shell cat ./data/iterations.json | jq 'first.entity_type') = "iteration" ] || (echo "[FAIL] Review ./data/iterations.json" && exit 1)
	@[ $(shell cat ./data/labels.json | jq 'first.entity_type') = "label" ] || (echo "[FAIL] Review ./data/labels.json" && exit 1)
	@[ $(shell cat ./data/custom-fields.json | jq 'first.entity_type') = "custom-field" ] || (echo "[FAIL] Review ./data/custom-fields.json" && exit 1)
	@[ $(shell cat ./data/linked-files.json | jq 'first.entity_type') = "linked-file" ] || (echo "[FAIL] Review ./data/linked-files.json" && exit 1)
	@[ $(shell cat ./data/members.json | jq 'first.entity_type') = "member" ] || (echo "[FAIL] Review ./data/members.json" && exit 1)
	@[ $(shell cat ./data/groups.json | jq 'first.entity_type') = "group" ] || (echo "[FAIL] Review ./data/groups.json" && exit 1)
	@[ $(shell cat ./data/objectives.json | jq 'first.entity_type') = "milestone" ] || (echo "[FAIL] Review ./data/objectives.json" && exit 1)
	@[ $(shell cat ./data/projects.json | jq 'first.entity_type') = "project" ] || (echo "[FAIL] Review ./data/projects.json" && exit 1)
	@[ $(shell cat ./data/repositories.json | jq 'first.entity_type') = "repository" ] || (echo "[FAIL] Review ./data/repositories.json" && exit 1)
	@[ $(shell cat ./data/stories.features.json | jq 'first.story_type') = "feature" ] || (echo "[FAIL] Review ./data/stories.features.json" && exit 1)
	@[ $(shell cat ./data/stories.bugs.json | jq 'first.story_type') = "bug" ] || (echo "[FAIL] Review ./data/stories.bugs.json" && exit 1)
	@[ $(shell cat ./data/stories.chores.json | jq 'first.story_type') = "chore" ] || (echo "[FAIL] Review ./data/stories.chores.json" && exit 1)
	@[ $(shell cat ./data/entity-templates.json | jq 'first.entity_type') = "entity-template" ] || (echo "[FAIL] Review ./data/entity-templates.json" && exit 1)
	@[ $(shell cat ./data/teams.json | jq 'first.entity_type') = "team" ] || (echo "[FAIL] Review ./data/teams.json" && exit 1)
	@[ $(shell cat ./data/workflows.json | jq 'first.entity_type') = "workflow" ] || (echo "[FAIL] Review ./data/workflows.json" && exit 1)
	@[ $(shell cat ./data/epic-workflow.json | jq '.entity_type') = "epic-workflow" ] || (echo "[FAIL] Review ./data/epic-workflow.json" && exit 1)
