defmodule TamnoonQr.Components.Root do
  @behaviour Tamnoon.Component

  @impl true
  def heex do
    ~s"""
    <!DOCTYPE html>
    <html lang="en">

      <head>
        <meta name="description" content="Webpage description goes here" />
        <meta charset="utf-8">
        <title>Tamnoon QR</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="tamnoon/tamnoon_dom.js"></script>
        <script src="tamnoon/tamnoon_driver.js"></script>
        <link rel="icon" type="image/x-icon" href="/tamnoon/tamnoon_icon.ico">
        <link rel="stylesheet" href="/style/uiStyle.css">
        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
    </head>
      </head>

      <body data-bs-theme="dark">
          <div id="app-container">
            <%= r.("ui/topbar.html.heex") %>
            <%= r.("ui/main_container.html.heex") %>
          </div>

          <!-- Bootstrap -->
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
      </body>
    </html>
    """
  end
end
