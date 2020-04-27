defmodule BlogWeb.PageController do
  use BlogWeb, :controller
  alias Blog.RepoFunctions
  def index(conn, _params) do
    posts = RepoFunctions.get_posts()
    render(conn, "index.html", posts: posts)
  end
  def show(conn, %{"id" => id}) do
    post = RepoFunctions.get_post(id)
    render(conn, "show.html", post: post)
  end
end
