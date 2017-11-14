defmodule FortuneWeb.PageController do
  use FortuneWeb, :controller

  def index(conn, _params) do
    quotes = [%{
      quote: "It is better to be making the news than taking it; to be an actor rather than a critic.", 
      author: "Winston Churchill"
    }, %{
      quote: "To improve is to change, so to be perfect is to have changed often.", 
      author: "Winston Churchill"
    }, %{
      quote: "Attitude is a little thing that makes a big difference.", 
      author: "Winston Churchill"
    }, %{
      quote: "You have enemies? Good. That means you've stood up for something, sometime in your life.", 
      author: "Winston Churchill"
    }, %{
      quote: "The best argument against democracy is a five-minute conversation with the average voter.", 
      author: "Winston Churchill"
    }]

    render conn, "index.html", quote: Enum.random(quotes)   
  end
end
