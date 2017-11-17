defmodule Ui.ErrorView do
  use Ui, :view

  def render("404.html", _assigns) do
    {:safe, "<p>Page not found</p><a href='/'>Go back</a>"}
  end

  def render("500.html", _assigns) do
    "Internal server error"
  end

  # In case no render clause matches or no
  # template is found, let's render it as 500
  def template_not_found(_template, assigns) do
    render "500.html", assigns
  end
end
