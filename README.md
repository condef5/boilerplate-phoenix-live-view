# Boilerplate Phoenix Live View 🌌

Set up a project easily with phoenix live view 🚀.

## Run project locally

To start your Phoenix server:

1. Install dependencies with `mix deps.get`
2. Create and migrate your database with `mix ecto.setup`
3. Install Node.js dependencies with `cd assets && npm install`
4. Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please
[check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Rename Project

You can change the name of the project, to achieve this you need to follow these
steps:

1. Install ack, for macOS: `brew install ack` or linux: `sudo apt-get install ack-grep`
2. Give permissions of execution to script: `chmod +x rename_project.sh`
3. Open `rename_project.sh` and update with the name of your project:
```
NEW_NAME=MyAwesomeProject
NEW_OTP=my_awesome_project
```
4. Execute script: `./rename_project.sh`
