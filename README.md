# Fortune

Divide app into 2 nodes: backend and ui

Step 1. Manually connect nodes

backend# iex --sname backend@localhost --cookie secret -S mix

ui#iex --sname ui@localhost --cookie secret -S mix phx.server
ui@localhost> Node.connect(:"backend@localhost")

Step 2. Connect nodes using .config files

backend# iex --sname backend@localhost --cookie secret --erl "-config config/backend.config" -S mix

ui# iex --sname ui@localhost --cookie secret --erl "-config config/ui.config" -S mix phx.server

Step 3. Specify distributed applications

backend# iex --sname backend@localhost --cookie secret --erl "-config config/backend.config" -S mix

ui# iex --sname ui@localhost --cookie secret --erl "-config config/ui.config" -S mix phx.server
ui@localhost> Node.list()
ui@localhost> Application.started_applications()
