defmodule MtgCrawler.Router do
  use Plug.Router

  plug Plug.Logger
  plug :match
  plug :dispatch

  get "/stores" do
    send_resp(conn, 200, "world")
  end

  match _ do
    send_resp(conn, 404, "oops")
  end
end

