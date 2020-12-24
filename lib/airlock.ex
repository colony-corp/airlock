defmodule Airlock do
  @moduledoc """
  Documentation for `Airlock`.
  """
  @behaviour Airlock.Adapter

  @impl true
  def write(key, value), do: driver().write(key, value)

  @impl true
  def read(key), do: driver().read(key)

  defp driver do
    driver = System.get_env("AIRLOCK_ADAPTER", "file")

    case driver do
      "file" -> Airlock.File
      "ssm" -> Airlock.SSM
    end
  end
end
