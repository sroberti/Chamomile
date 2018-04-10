defmodule MyBot do
  use Application
  alias Alchemy.Client

  defmodule Commands do
    use Alchemy.Cogs

    Cogs.def ping do
      Cogs.say "pong!"
    end


    Cogs.def echo(string) do
      Cogs.say string
    end

    Cogs.def sam do
      Cogs.say "Now Sam has a command too!"
    end


  def start(_type, _args) do
    run = Client.start("NDMzMzQ2ODY2NjYzNTIyMzE5.Da6lhQ.S28_JpAeo1NRBp2jAvjo8mqm4DU")
    CommandHandler.set_prefix("|")
    use Commands
    run
  end
end
