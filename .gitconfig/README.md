# My .gitconfig

This repository contains my git configurations.

These configurations will help me be more efficient executing git commands.

Feel free to use it and become as lazy as me =)

---

## How to use

1. Place the `.gitconfig` where you usually would.

(find out the location of your config using the `git config --list --show-origin` command)

2. Place the `git-custom-commands.sh` in the same folder as your `.gitconfig`.
3. Change the paths in the `.gitconfig`

🚀 You are now ready to go (and be lazy)! 🚀

(you might have to restart your terminal for the commands to work)

---

## Commands

(lazy, might not contain every command)

### `git statusnum`
  - Performs the cheeky `git status` but adds a number in front of the file.
  - Other commands can interact with this file number.

---

### `git addnum`
  - Performs the good'ol `git add` on a file based on file number.

---

### `git resetnum` 
  - Performs `git reset` on the file based on file number. (The "Unstaged changes after reset: <filename>" is lying btw)

---

### `git diffnum` 
  - Performs `git diff` on a file based on file number.

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
