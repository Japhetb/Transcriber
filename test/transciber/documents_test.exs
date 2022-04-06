defmodule Transciber.DocumentsTest do
  use Transciber.DataCase

  alias Transciber.Documents

  describe "files" do
    alias Transciber.Documents.File

    import Transciber.DocumentsFixtures

    @invalid_attrs %{file: nil, file_title: nil, uploader: nil}

    test "list_files/0 returns all files" do
      file = file_fixture()
      assert Documents.list_files() == [file]
    end

    test "get_file!/1 returns the file with given id" do
      file = file_fixture()
      assert Documents.get_file!(file.id) == file
    end

    test "create_file/1 with valid data creates a file" do
      valid_attrs = %{file: "some file", file_title: "some file_title", uploader: "some uploader"}

      assert {:ok, %File{} = file} = Documents.create_file(valid_attrs)
      assert file.file == "some file"
      assert file.file_title == "some file_title"
      assert file.uploader == "some uploader"
    end

    test "create_file/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Documents.create_file(@invalid_attrs)
    end

    test "update_file/2 with valid data updates the file" do
      file = file_fixture()
      update_attrs = %{file: "some updated file", file_title: "some updated file_title", uploader: "some updated uploader"}

      assert {:ok, %File{} = file} = Documents.update_file(file, update_attrs)
      assert file.file == "some updated file"
      assert file.file_title == "some updated file_title"
      assert file.uploader == "some updated uploader"
    end

    test "update_file/2 with invalid data returns error changeset" do
      file = file_fixture()
      assert {:error, %Ecto.Changeset{}} = Documents.update_file(file, @invalid_attrs)
      assert file == Documents.get_file!(file.id)
    end

    test "delete_file/1 deletes the file" do
      file = file_fixture()
      assert {:ok, %File{}} = Documents.delete_file(file)
      assert_raise Ecto.NoResultsError, fn -> Documents.get_file!(file.id) end
    end

    test "change_file/1 returns a file changeset" do
      file = file_fixture()
      assert %Ecto.Changeset{} = Documents.change_file(file)
    end
  end
end
