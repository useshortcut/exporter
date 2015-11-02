#!/bin/sh

mkdir -p ./data

echo "Saving all users to data/users.json"
curl -X GET -H "Content-Type: application/json" \
  -L "https://api.clubhouse.io/api/v1/users?token=$CLUBHOUSE_API_TOKEN" > data/users.json 2>/dev/null

echo "Saving all projects to data/projects.json"
curl -X GET -H "Content-Type: application/json" \
  -L "https://api.clubhouse.io/api/v1/projects?token=$CLUBHOUSE_API_TOKEN" > data/projects.json 2>/dev/null

echo "Saving all epics to data/epics.json"
curl -X GET -H "Content-Type: application/json" \
  -L "https://api.clubhouse.io/api/v1/epics?token=$CLUBHOUSE_API_TOKEN" > data/epics.json 2>/dev/null

echo "Saving workflow states to data/workflow.json"
curl -X GET -H "Content-Type: application/json" \
  -L "https://api.clubhouse.io/api/v1/workflows?token=$CLUBHOUSE_API_TOKEN" > data/workflow.json 2>/dev/null

echo "Saving all labels to data/labels.json"
curl -X GET -H "Content-Type: application/json" \
  -L "https://api.clubhouse.io/api/v1/labels?token=$CLUBHOUSE_API_TOKEN" > data/labels.json 2>/dev/null

echo "Saving all features to data/story.features.json"
curl -X POST -H "Content-Type: application/json" -d '{ "story_type": "feature" }' \
  -L "https://api.clubhouse.io/api/v1/stories/search?token=$CLUBHOUSE_API_TOKEN" > data/story.features.json 2>/dev/null

echo "Saving all bugs to data/story.bugs.json"
curl -X POST -H "Content-Type: application/json" -d '{ "story_type": "bug" }' \
  -L "https://api.clubhouse.io/api/v1/stories/search?token=$CLUBHOUSE_API_TOKEN" > data/story.bugs.json 2>/dev/null

echo "Saving all chores to data/story.chores.json"
curl -X POST -H "Content-Type: application/json" -d '{ "story_type": "chore" }' \
  -L "https://api.clubhouse.io/api/v1/stories/search?token=$CLUBHOUSE_API_TOKEN" > data/story.chores.json 2>/dev/null

echo "Done!"
