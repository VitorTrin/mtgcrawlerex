defmodule MtgCrawler.Crawler do
  @moduledoc """
  Main module that crawls an website and returns relevant info according to the function
  """

  require MtgCrawler.Session

  alias Hound.Helpers.{
    Element,
    Navigation,
    Page
  }

  def get_stores(
        url \\ "https://www.ligamagic.com.br/?view=cards%2Fsearch&card=tasigur%2C+the+golden+fang"
      ) do
    MtgCrawler.Session.within_session do
      Navigation.navigate_to(url)
      :css |> Page.find_element("input.exibir-mais") |> Element.click()

      :css
      |> Page.find_all_elements("div.estoque-linha div.e-col1 img", 1)
      |> Enum.map(fn element ->
        Element.attribute_value(element, "title")
      end)
      |> Enum.dedup()
    end
  end
end
