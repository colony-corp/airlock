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

The top module Airlock implements the `Adapter` behaviour as does `SSM` and `File`. Dialyzer confirms they all have the same method signature. You can set the adapter and use `Airlock` directly instead of using the actual adapter implementation (SSM or File) directly.

In prod you can use SSM. Your library users can easily use your provided `File` or `Memory` mock in their tests and you can add an integration test in _this_ library to very SSM works.