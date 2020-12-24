# Airlock

Nothing to see here.

Run one of:

```
AIRLOCK_ADAPTER=file iex -S mix
AIRLOCK_ADAPTER=ssm iex -S mix
```

```elixir
Airlock.write("my-key", "my-value")
Airlock.read("my-key")
```