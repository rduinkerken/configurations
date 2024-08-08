#!/bin/bash

git_statusnum() {
  git status --short | awk '
    BEGIN { last_label = "" }
    {
      if ($1 == "A" || $1 == "M" || $1 == "D") {
        if (system("git diff --cached --quiet --exit-code -- " $2) == 0) {
          label = "\033[35m(STAGED BUT MODIFIED)\033[0m"; # Purple for staged but modified
        } else if (system("git diff --quiet --exit-code -- " $2) == 0) {
          label = "\033[36m(ADDED)\033[0m"; # Cyan for added
        } else {
          label = "\033[32m(STAGED)\033[0m"; # Green for added, modified, or deleted
        }
      } else if ($1 == "??") {
        label = "\033[31m(UNTRACKED)\033[0m"; # Red for untracked
      } else if (system("git diff --quiet --exit-code -- " $2) == 0) {
        label = "\033[31m(UNSTAGED)\033[0m"; # Red for unstaged
      } else {
        label = "\033[35m(UNSTAGED AND MODIFIED)\033[0m"; # Purple for unstaged and modified
      }

      if (label != last_label) {
        if (last_label != "") {
          print ""; # Add a newline after the last file with the previous label
        }
        last_label = label;
      }

      print NR ": " label " " $2; # Print the file with the label
    }
  '
}

git_addnumber() {
  file_number=$1
  file_to_add=$(git status --short | sed -n "${file_number}p" | cut -c4-)
  
  if [ -n "$file_to_add" ]; then
      git add "$file_to_add" && echo "✅ File added: $file_to_add" || echo "❌ Failed to add file: $file_to_add"
  else
    echo "❌ Invalid file number: $file_number"
  fi
}

git_restorenum() {
  file_number=$1
  file_to_restore=$(git status --short | sed -n "${file_number}p" | cut -c4-)
  
  if [ -n "$file_to_restore" ]; then
    git restore "$file_to_restore"
  else
    echo "Invalid file number: $file_number"
  fi
}

git_resetnum() {
  file_number=$1
  file_to_reset=$(git status --short | sed -n "${file_number}p" | cut -c4-)
  
  if [ -n "$file_to_reset" ]; then
    if git diff --cached --quiet --exit-code -- "$file_to_reset"; then
      echo "✅ File already reset: $file_to_reset"
    else
      git reset "$file_to_reset" && echo "✅ File reset: $file_to_reset" || echo "❌ Failed to reset file: $file_to_reset"
    fi
  else
    echo "❌ Invalid file number: $file_number"
  fi
}

git_diffnum() {
  file_number=$1
  file_to_diff=$(git status --short | sed -n "${file_number}p" | cut -c4-)
  
  if [ -n "$file_to_diff" ]; then
    git diff "$file_to_diff"
  else
    echo "Invalid file number: $file_number"
  fi
}

# Execute the appropriate command based on user input
case "$1" in
  "statusnum") git_statusnum ;;
  "addnumber") git_addnumber "$2" ;;
  "restorenum") git_restorenum "$2" ;;
  "resetnum") git_resetnum "$2" ;;
  "diffnum") git_diffnum "$2" ;;
  *) echo "Invalid command" ;;
esac