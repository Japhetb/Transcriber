defmodule Transciber.Documents.File do
  use Ecto.Schema
  import Ecto.Changeset

  schema "files" do
    field :file, :string
    field :file_title, :string
    field :uploader, :string

    timestamps()
  end

  @doc false
  def changeset(file, attrs) do
    file
    |> cast(attrs, [:file_title, :uploader, :file])
    |> validate_required([:file_title, :uploader, :file])
  end
end
