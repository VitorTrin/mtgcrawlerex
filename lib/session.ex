defmodule Mtgcrawler.Session do
  @moduledoc false

  defmacro within_session(do: block) do
    quote do
      Hound.start_session()
      result = unquote(block)
      Hound.end_session()
      result
    end
  end
end
