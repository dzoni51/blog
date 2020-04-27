defmodule Blog.RepoFunctions do
  alias Blog.Models.Posts
  import Ecto.Query
  alias Blog.Repo
   
  def insert_post(params) do
    %Posts{}
    |> Posts.changeset(params)
    |> Repo.insert()
  end
  def get_posts() do
    q = from p in Posts
    Repo.all q
  end
 def get_post(id) do
    q = from p in Posts, where: p.id == ^id
    Repo.one q
  end
end
