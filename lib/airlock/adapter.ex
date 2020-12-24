defmodule Airlock.Adapter do
  @callback write(String.t(), String.t()) :: :ok | {:error, atom}
  @callback read(String.t()) :: {:ok, String.t()} | {:error, atom}
end
