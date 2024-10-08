# My .gitconfig

This repository contains my git config.

Feel free to use it and become as lazy as me =)

---

## How to use

1. Place the `.gitconfig` where you usually would.

(find out the location of your config using the `git config --list --show-origin` command)

🚀 You are now ready to go (and be lazy)! 🚀

---

## Commands

(lazy, might not contain every command)

## git fadd

- Performs `git add` using fzf to select files to add

## git frestore

- Performs `git restore` using fzf to select files to restore

## git fclean

- Performs `git clean` using fzf to select files to clean

## `git amend`

- Performs `git commit --amend --no-edit`, would ya look at that 😎

## `git diffs`

- Performs `git difftool -y` (split screen differences)

## `git aliases`

- Shows list of aliases in terminal

## `git bh`

- Show list of all branches + latest commit message + time ago + author

## `git undolocal`

- Performs `git reset --hard HEAD` to remove local tracked files. (untracked files are not deleted)

## `git co` (dependant of fzf > fuzzy finder) (if you have chocolatey: choco install fzf)

- Makes it so you can fuzzy find through your branches and easily checkout a selected branch
