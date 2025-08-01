defmodule TamnoonQr.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {Tamnoon,
       [
         [
           router: TamnoonQr.Router,
           initial_state: %{
            qr_content: ""
           },
           methods_modules: [TamnoonQR.Methods.QrMethods],
         ]
       ]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TamnoonQr.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
