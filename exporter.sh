#!/bin/sh

mkdir -p ./data

echo "Saving all Categories to data/categories.json"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/categories" > data/categories.json 2>/dev/null

echo "Saving all Epics to data/epics.json"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/epics" > data/epics.json 2>/dev/null

echo "Saving all Files to data/files.json"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/files" > data/files.json 2>/dev/null

echo "Saving all Iterations to data/iterations.json"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/iterations" > data/iterations.json 2>/dev/null

echo "Saving all Labels to data/labels.json"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/labels" > data/labels.json 2>/dev/null

echo "Saving all Custom Fields to data/custom-fields.json"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/custom-fields" > data/labels.json 2>/dev/null

echo "Saving all Linked Files to data/linkedfiles.json"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/linked-files" > data/linkedfiles.json 2>/dev/null

echo "Saving all Members to data/members.json"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/members" > data/members.json 2>/dev/null

echo "Saving all Groups (a.k.a. Teams) to data/groups.json"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/groups" > data/members.json 2>/dev/null

echo "Saving all Objectives to data/objectives.json"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/objectives" > data/objectives.json 2>/dev/null

echo "Saving all Projects to data/projects.json"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/projects" > data/projects.json 2>/dev/null

echo "Saving all Repositories to data/repositories.json"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/repositories" > data/repositories.json 2>/dev/null

echo "Saving all Feature Stories to data/stories.features.json"
curl -X POST \
     -H "Content-Type: application/json" -d "{ \"story_type\": \"feature\" }" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/stories/search" > data/stories.features.json 2>/dev/null

echo "Saving all Bug Stories to data/stories.bugs.json"
curl -X POST \
     -H "Content-Type: application/json" -d "{ \"story_type\": \"bug\" }" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/stories/search" > data/stories.bugs.json 2>/dev/null

echo "Saving all Chore Stories to data/stories.chores.json"
curl -X POST \
     -H "Content-Type: application/json" -d "{ \"story_type\": \"chore\" }" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/stories/search" > data/stories.chores.json 2>/dev/null

echo "Saving all Entity Templates to data/entity-templates.json"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/entity-templates" > data/stories.chores.json 2>/dev/null

echo "Saving all Teams to data/teams.json"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/teams" > data/teams.json 2>/dev/null

echo "Saving Story Workflows and their states to data/workflows.json"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/workflows" > data/workflow.json 2>/dev/null

echo "Saving the Epic Workflow and its states to data/epic-workflow.json"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/workflows" > data/workflow.json 2>/dev/null

echo "Done!"
