defmodule Pensieve.Memories.Memory do
  use Ecto.Schema
  import Ecto.Changeset

  schema "memories" do
    field :content, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(memory, attrs) do
    memory
    |> cast(attrs, [:title, :content])
    |> validate_required([:title, :content])
  end
end
