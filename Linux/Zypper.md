# Zypper Command Tips

| Command                            | Action                                      |
|------------------------------------|---------------------------------------------|
| zypper search <item to search for> | Searching for Packages                      |
| sudo zypper install <package name> | Install a Package                           |
| sudo zypper remove <package name>  | Remove a Package                            |
| zypper list-updates                | Shows what updates are available            |
| sudo zypper update <package name>  | Just update the selected package            |
| sudo zypper update                 | Update All Packages (LEAP and Enterprise)   |
| sudo zypper dup                    | Update All Packages (Tumbleweed)            |
| zypper info <package name>         | View Information about a Package            |
| sudo zypper al <package name>      | Locks a Package (won't be updated)          |
| zypper ll                          | List all the packages that have been locked |
| sudo zypper rl <package name>      | Removes a lock on a package                 |
|                                    |                                             |

Source [Learn Linux TV Crash Course - Zypper command](https://youtu.be/KFvpdDNahXc)
