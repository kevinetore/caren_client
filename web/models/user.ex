defmodule FitbitClient.User do
  use FitbitClient.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string
    field :access_token, :string
    field :refresh_token, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :email, :access_token, :refresh_token])
    |> validate_required([:name, :email, :access_token, :refresh_token])
  end
end