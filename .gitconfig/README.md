# My .gitconfig

This repository contains my git configurations.

These configurations will help me be more efficient executing git commands.

Feel free to use it and become more lazy! =)

---

## How to use

1. Place the `.gitconfig` where you usually would.

(find out the location of your config using the `git config --list --show-origin` command)

2. Place the `git-custom-commands.sh` somewhere on your computer.
3. Change the paths in the `.gitconfig`

🚀 You are now ready to go (and be lazy)! 🚀

---

## Commands

### `git statusnum`
  - Performs the cheeky `git status` but adds a number in front of the file.
  - Other commands can interact with this file number.

![image](https://github.com/rduinkerken/.gitconfig/assets/47044290/f8483879-77a8-458d-a595-dfe4712f4166)

---

### `git addnum`
  - Performs the good'ol `git add` on a file based on file number.
    
![image](https://github.com/rduinkerken/.gitconfig/assets/47044290/ae63a7c3-4a2a-4451-8e76-a5a1cce3ec92)

---

### `git resetnum` 
  - Performs `git reset` on the file based on file number. (The "Unstaged changes after reset: <filename>" is lying btw)

![image](https://github.com/rduinkerken/.gitconfig/assets/47044290/2c726d10-b574-43a6-9703-21cef33d5b62)

---

### `git diffnum` 
  - Performs `git diff` on a file based on file number.
    
![image](https://github.com/rduinkerken/.gitconfig/assets/47044290/60430889-7652-46e6-b649-34b752f007c7)

## `git amend`
  - Performs `git commit --amend --no-edit`, would ya look at that 😎

![image](https://github.com/rduinkerken/.gitconfig/assets/47044290/86094a3d-98b4-4f7b-ac01-b4cc29cbc985)

## `git diffs`
  - Performs `git difftool -y` (split screen differences)

![image](https://github.com/rduinkerken/.gitconfig/assets/47044290/8daefb7d-7f56-4d1f-8abf-2181cb124b28)


## `git aliases`
  - Shows list of aliases in terminal

![image](https://github.com/rduinkerken/.gitconfig/assets/47044290/199fcccb-094b-4557-abe0-3ce412879cb2)

## `git bh`
  - Show list of all branches + latest commit message + time ago + author

![image](https://github.com/rduinkerken/.gitconfig/assets/47044290/bb519169-fb8b-40ac-954f-24d1deddf86f)

## `git undolocal`
  - Performs `git reset --hard HEAD` to remove local tracked files. (untracked files are not deleted)

![image](https://github.com/rduinkerken/.gitconfig/assets/47044290/197e7f57-6be6-4b06-8813-bb44585171d5)

