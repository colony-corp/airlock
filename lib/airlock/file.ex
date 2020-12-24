defmodule Airlock.File do
  @moduledoc """
  Storage driver for local filesystem
  """
  @behaviour Airlock.Adapter

  @impl true
  def write(key, value) do
    IO.puts("I write #{key}:#{value} to file")
    :ok
  end

  @impl true
  def read(key) do
    IO.puts("I read #{key} from file")
    {:ok, "file"}
  end
end
