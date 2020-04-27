defmodule BlogWeb.PostsController  do
use BlogWeb, :controller
alias Blog.Models.Posts

def new(conn, _) do
 changeset = Posts.changeset(%Posts{})
 render(conn, "new.html", changeset: changeset)
end
def create(conn, %{"posts" => post_params}) do
  Blog.RepoFunctions.insert_post(post_params)
  conn
  |> put_flash(:info, "Post published")
  |> redirect(to: Routes.posts_path(conn, :new))
end
end
