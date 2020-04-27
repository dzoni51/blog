defmodule Blog.Repo.Migrations.AddPosts do
  use Ecto.Migration

  def change do
    create table("posts") do
      add :title, :string
      add :body, :text
      add :view_counter, :integer
      add :publisher, :string
      add :category, :string
    end
  end
end
