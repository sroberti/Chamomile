defmodule MyBot do
  use Application
  alias Alchemy.Client

  defmodule Commands do
    use Alchemy.Cogs

    Cogs.def ping do
      Cogs.say "pong!"
    end
  end

  def start(_type, _args) do
    run = Client.start("NDMzMzQ2ODY2NjYzNTIyMzE5.Da6lhQ.S28_JpAeo1NRBp2jAvjo8mqm4DU")
    use Commands
    run
  end
end
