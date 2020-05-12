#!/bin/sh

api()
{
    request="$1"
    filename="${2:-$1}"
    if [ "$#" -eq 1 ]; then
        shift 1
    else
        shift 2
    fi

    curl -s \
      -X GET \
      -H "Content-Type: application/json" \
      -L \
      "$@" \
      "https://api.clubhouse.io/api/v3/${request}?token=${CLUBHOUSE_API_TOKEN}" >"data/${filename}.json"
}

mkdir -p ./data

echo "Saving all Categories to data/categories.json"
api categories

echo "Saving all Epics to data/epics.json"
api epics

echo "Saving all Files to data/files.json"
api files

echo "Saving all Iterations to data/iterations.json"
api iterations

echo "Saving all Labels to data/labels.json"
api labels

echo "Saving all Linked Files to data/linkedfiles.json"
api linked-files linkedfiles

echo "Saving all Members to data/members.json"
api members

echo "Saving all Milestones to data/milestones.json"
api milestones

echo "Saving all Projects to data/projects.json"
api projects

echo "Saving all Repositories to data/repositories.json"
api repositories

echo "Saving all Feature Stories to data/stories.features.json"
api stories/search stories.features -d '{ "story_type": "feature" }'

echo "Saving all Bug Stories to data/stories.bugs.json"
api stories/search stories.bugs -d '{ "story_type": "bug" }'

echo "Saving all Chore Stories to data/stories.chores.json"
api stories/search stories.chores -d '{ "story_type": "chore" }'

echo "Saving all Teams to data/teams.json"
api teams

echo "Saving Workflow states to data/workflows.json"
api workflows

echo 'Done!'
