# tmux Shortcuts

Please note, I've noted my configurations with the default as well.

Please check out learnlinux.tv as thats where I got my configuration file and the bulk of my knowledge.

Also [TMux Cheat Sheet](https://tmuxcheatsheet.com) is a great start as well

I leave my prefix as the default `CTRL + B`

## Working with Windows and Panes
| Key Combination | Action | Default Key Combination |
| --------------- | ------ | ----------------------- |
| Alt + Arrows | Move between Panes | Prefix + Arrows |
| Prefix + h | Horizontal Split | Prefix + " |
| Prefix + v | Vertical Split | Prefix + % |
| Shift + Left or Right | Shift Windows | Prefix + either P or N |
| Prefix + r | Reload tmux Configuration | |
| Prefix + y | Synchronize Panes | |
| Prefix + c | Create a New Window | |
| Prefix + k | Kill a Window | Prefix + & |
| Prefix + Number | Go to that specific window | |
| Prefix + , | Rename Window | can also do `tmux rename-window name` |
| Prefix + d | Disconnects a Session | |

## Copy and Paste
| Key Combination | Action |
| --------------- | ------ |
| Prefix + [ | Enter Copy Mode |
| Spacebar | Start Selection |
| Enter | Copy Selection |
| Esc | Clear Selection |
| Prefix + ] | Paste Contents |
| q | Quit Copy Mode |

Simple Commands for Outside of tmux

`tmux ls` = To List All the Running Sessions

`tmux attach -t 0` = To attach a specific session, in this case Session 0

`tmux rename-session -t (session name or number)` = Rename a Session

`tmux kill-session -t (session name or number)` = Kills a Session
