defmodule Transciber.DocumentsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Transciber.Documents` context.
  """

  @doc """
  Generate a file.
  """
  def file_fixture(attrs \\ %{}) do
    {:ok, file} =
      attrs
      |> Enum.into(%{
        file: "some file",
        file_title: "some file_title",
        uploader: "some uploader"
      })
      |> Transciber.Documents.create_file()

    file
  end
end
