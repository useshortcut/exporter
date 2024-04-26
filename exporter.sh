#!/bin/sh

export DATADIR=./data
mkdir -p "$DATADIR"

export FILE=""
f() {
    # Specify output file for a given export,
    # using a single variable to avoid drift
    # between echo and curl statements.
    FILE="$DATADIR/$1"
}

f "categories.json"
echo "Saving all Categories to $FILE"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/categories" > "$FILE" 2>/dev/null

f "epics.json"
echo "Saving all Epics to $FILE"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/epics" > "$FILE" 2>/dev/null

f "files.json"
echo "Saving all Files to $FILE"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/files" > "$FILE" 2>/dev/null

f "iterations.json"
echo "Saving all Iterations to $FILE"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/iterations" > "$FILE" 2>/dev/null

f "labels.json"
echo "Saving all Labels to $FILE"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/labels" > "$FILE" 2>/dev/null

f "custom-fields.json"
echo "Saving all Custom Fields to $FILE"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/custom-fields" > "$FILE" 2>/dev/null

f "linked-files.json"
echo "Saving all Linked Files to $FILE"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/linked-files" > "$FILE" 2>/dev/null

f "members.json"
echo "Saving all Members to $FILE"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/members" > "$FILE" 2>/dev/null

f "groups.json"
echo "Saving all Groups (of Members, a.k.a. Teams in the app) to $FILE"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/groups" > "$FILE" 2>/dev/null

f "objectives.json"
echo "Saving all Objectives to $FILE"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/objectives" > "$FILE" 2>/dev/null

f "projects.json"
echo "Saving all Projects to $FILE"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/projects" > "$FILE" 2>/dev/null

f "repositories.json"
echo "Saving all Repositories to $FILE"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/repositories" > "$FILE" 2>/dev/null

f "stories.features.json"
echo "Saving all Feature Stories to $FILE"
curl -X POST \
     -H "Content-Type: application/json" -d "{ \"story_type\": \"feature\" }" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/stories/search" > "$FILE" 2>/dev/null

f "stories.bugs.json"
echo "Saving all Bug Stories to $FILE"
curl -X POST \
     -H "Content-Type: application/json" -d "{ \"story_type\": \"bug\" }" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/stories/search" > "$FILE" 2>/dev/null

f "stories.chores.json"
echo "Saving all Chore Stories to $FILE"
curl -X POST \
     -H "Content-Type: application/json" -d "{ \"story_type\": \"chore\" }" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/stories/search" > "$FILE" 2>/dev/null

f "entity-templates.json"
echo "Saving all Entity Templates to $FILE"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/entity-templates" > "$FILE" 2>/dev/null

f "teams.json"
echo "Saving all Teams (not of members, see Groups export for that) to $FILE"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/teams" > "$FILE" 2>/dev/null

f "workflows.json"
echo "Saving Story Workflows and their states to $FILE"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/workflows" > "$FILE" 2>/dev/null

f "epic-workflow.json"
echo "Saving the Epic Workflow and its states to $FILE"
curl -X GET \
     -H "Content-Type: application/json" \
     -H "Shortcut-Token: $SHORTCUT_API_TOKEN" \
     -L "https://api.app.shortcut.com/api/v3/epic-workflow" > "$FILE" 2>/dev/null

echo "Done!"
