#!/bin/bash
# Usage: ./update.sh "what you changed"
# Creates a branch, commits, pushes, opens a PR, then deploys to Netlify on merge.

set -e

if [ -z "$1" ]; then
  echo "Usage: ./update.sh \"describe your change\""
  exit 1
fi

MESSAGE="$1"
BRANCH="update/$(echo "$MESSAGE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | cut -c1-40)"

git checkout -b "$BRANCH"
git add .
git commit -m "$MESSAGE"
git push -u origin "$BRANCH"
gh pr create --title "$MESSAGE" --body "## Summary
$MESSAGE

## Test plan
- [ ] Verified in local preview (npx serve)
- [ ] Checked mobile layout
- [ ] Ready to deploy

🤖 Generated with [Claude Code](https://claude.com/claude-code)"

echo ""
echo "PR created. After merging, deploy with:"
echo "  git checkout main && git pull && npx netlify-cli deploy --prod"
