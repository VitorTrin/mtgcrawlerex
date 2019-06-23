# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# config :hound, port: 4444
config :hound, driver: "phantomjs", host: "http://phantomjs", port: 8910
# config :hound, app_host: "http://localhost", app_port: 4444
# config :hound, port: 4444,  driver: "chrome_driver"
