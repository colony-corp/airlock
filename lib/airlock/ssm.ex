defmodule Airlock.SSM do
  @moduledoc """
  Storage driver for local filesystem
  """
  @behaviour Airlock.Adapter

  @impl Airlock.Adapter
  def write(key, value) do
    IO.puts("I write #{key}:#{value} to SSM")
    :ok
  end

  @impl Airlock.Adapter
  def read(key) do
    IO.puts("I read #{key} from SSM")
    {:ok, "SSM"}
  end
end
