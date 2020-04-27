defmodule Blog.Models.Posts do
  use Ecto.Schema
  import Ecto.Changeset
  schema "posts" do
    field :title, :string
    field :category, :string
    field :view_counter, :integer
    field :body, :string
    field :publisher, :string
  end
  def changeset(post, params \\ %{}) do
    post
    |> cast(params, [:title, :category, :view_counter, :body, :publisher])
  end
end
