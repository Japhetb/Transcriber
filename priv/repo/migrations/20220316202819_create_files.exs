defmodule Transciber.Repo.Migrations.CreateFiles do
  use Ecto.Migration

  def change do
    create table(:files) do
      add :file_title, :string
      add :uploader, :string
      add :file, :text

      timestamps()
    end
  end
end
