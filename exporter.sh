#!/bin/sh

mkdir -p ./data

echo "Saving all Categories to data/categories.json"
curl -X GET \
  -H "Content-Type: application/json" \
  -L "https://api.clubhouse.io/api/v3/categories?token=$CLUBHOUSE_API_TOKEN" > data/categories.json 2>/dev/null

echo "Saving all Epics to data/epics.json"
curl -X GET \
  -H "Content-Type: application/json" \
  -L "https://api.clubhouse.io/api/v3/epics?token=$CLUBHOUSE_API_TOKEN" > data/epics.json 2>/dev/null

echo "Saving all Files to data/files.json"
curl -X GET \
  -H "Content-Type: application/json" \
  -L "https://api.clubhouse.io/api/v3/files?token=$CLUBHOUSE_API_TOKEN" > data/files.json 2>/dev/null

echo "Saving all Iterations to data/iterations.json"
curl -X GET \
  -H "Content-Type: application/json" \
  -L "https://api.clubhouse.io/api/v3/iterations?token=$CLUBHOUSE_API_TOKEN" > data/iterations.json 2>/dev/null

echo "Saving all Labels to data/labels.json"
curl -X GET \
  -H "Content-Type: application/json" \
  -L "https://api.clubhouse.io/api/v3/labels?token=$CLUBHOUSE_API_TOKEN" > data/labels.json 2>/dev/null

echo "Saving all Linked Files to data/linkedfiles.json"
curl -X GET \
  -H "Content-Type: application/json" \
  -L "https://api.clubhouse.io/api/v3/linked-files?token=$CLUBHOUSE_API_TOKEN" > data/linkedfiles.json 2>/dev/null

echo "Saving all Members to data/members.json"
curl -X GET \
  -H "Content-Type: application/json" \
  -L "https://api.clubhouse.io/api/v3/members?token=$CLUBHOUSE_API_TOKEN" > data/members.json 2>/dev/null

echo "Saving all Milestones to data/milestones.json"
curl -X GET \
  -H "Content-Type: application/json" \
  -L "https://api.clubhouse.io/api/v3/milestones?token=$CLUBHOUSE_API_TOKEN" > data/milestones.json 2>/dev/null

echo "Saving all Projects to data/projects.json"
curl -X GET \
  -H "Content-Type: application/json" \
  -L "https://api.clubhouse.io/api/v3/projects?token=$CLUBHOUSE_API_TOKEN" > data/projects.json 2>/dev/null

echo "Saving all Repositories to data/repositories.json"
curl -X GET \
  -H "Content-Type: application/json" \
  -L "https://api.clubhouse.io/api/v3/repositories?token=$CLUBHOUSE_API_TOKEN" > data/repositories.json 2>/dev/null

echo "Saving all Feature Stories to data/stories.features.json"
curl -X POST -H "Content-Type: application/json" -d "{ \"story_type\": \"feature\" }" \
  -L "https://api.clubhouse.io/api/v3/stories/search?token=$CLUBHOUSE_API_TOKEN" > data/stories.features.json 2>/dev/null

echo "Saving all Bug Stories to data/stories.bugs.json"
curl -X POST -H "Content-Type: application/json" -d "{ \"story_type\": \"bug\" }" \
  -L "https://api.clubhouse.io/api/v3/stories/search?token=$CLUBHOUSE_API_TOKEN" > data/stories.bugs.json 2>/dev/null

echo "Saving all Chore Stories to data/stories.chores.json"
curl -X POST -H "Content-Type: application/json" -d "{ \"story_type\": \"chore\" }" \
  -L "https://api.clubhouse.io/api/v3/stories/search?token=$CLUBHOUSE_API_TOKEN" > data/stories.chores.json 2>/dev/null

echo "Saving all Teams to data/teams.json"
curl -X GET -H "Content-Type: application/json" \
  -L "https://api.clubhouse.io/api/v3/teams?token=$CLUBHOUSE_API_TOKEN" > data/teams.json 2>/dev/null

echo "Saving Workflow states to data/workflows.json"
curl -X GET -H "Content-Type: application/json" \
  -L "https://api.clubhouse.io/api/v3/workflows?token=$CLUBHOUSE_API_TOKEN" > data/workflow.json 2>/dev/null

echo "Done!"
