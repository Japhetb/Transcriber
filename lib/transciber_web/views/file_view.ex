defmodule TransciberWeb.FileView do
  use TransciberWeb, :view
  alias TransciberWeb.FileView

  def render("index.json", %{files: files}) do
    %{data: render_many(files, FileView, "file.json")}
  end

  def render("show.json", %{file: file}) do
    %{data: render_one(file, FileView, "file.json")}
  end

  def render("file.json", %{file: file}) do
    %{
      id: file.id,
      file_title: file.file_title,
      uploader: file.uploader,
      file: file.file
    }
  end
end
