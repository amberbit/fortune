# Fortune

Divide app into 2 nodes: backend and ui

Step 1. Manually connect nodes

backend# iex --sname backend@localhost --cookie secret -S mix

ui#iex --sname ui@localhost --cookie secret -S mix phx.server
ui@localhost> Node.connect(:"backend@localhost")
