# IRSSI QUICK SHEET

**Remember-config is in $HOME/.irssi/config**

| Command                                      | What it Does                                            |
|----------------------------------------------|---------------------------------------------------------|
| /quit                                        | Quits IRSSI                                             |
| /connect <network name>                      | Connects to a preset network                            |
| /set nick <nickname>                         | Sets your nick name (just set it in config)             |
| /join <channel name>                         | Joins a channel                                         |
| /list                                        | Lists the Rooms (don't do this)                         |
| /kick or /ban                                | Kicks or bans a user                                    |
| Alt+Number                                   | Jumps between windows in IRSSI                          |
| /network                                     | List the networks that are saved                        |
| /CHANNEL ADD -AUTO #CHANNELNAME NETWORK NAME | Automatically join a channel on connect                 |
| /addallchans                                 | Add's all currently open channels as auto-join channels |
|                                              |                                                         |

# To add a new network using LiberaChat as an example 
- `/network add LiberaChat`
- `/server add -network LiberaChat -tls -tls_verify irc.libera.chat 6697`
- `/save`

# To update after you register your nickname (using MyNickName as the nickname and MyNickPassword as the password)
- `/network modify -sasl_username MyNickName -sasl_password MyNickPassword -sasl_mechanism PLAIN LiberaChat`

# To auto connect each time IRSSI starts
- `/server add -auto -network Liberachat -tls -tls_verify irc.libera.chat 6697`
