defmodule TamnoonQR.Methods.QrMethods do
  import Tamnoon.MethodManager
  alias Tamnoon.DOM

  defmethod :handle_qr_submit do
    # An action to show the "Your QR code is ready!" card with the generated QR code
    show_result_container = DOM.Actions.ToggleAttribute.new!(%{
      attribute: "hidden",
      force: false,
      target: DOM.Node.new!(%{
        selector_type: :id,
        selector_value: "qr-display-container"
      })
    })

    %{qr_content: qr_content} = state
    qr_code_url = "https://api.qrserver.com/v1/create-qr-code/?data=#{URI.encode(qr_content)}&size=300x300"

    # An action to change the QR code image source to the generated QR code URL
    change_qr_image = DOM.Actions.SetAttribute.new!(%{
      attribute: "src",
      value: qr_code_url,
      target: DOM.Node.new!(%{
        selector_type: :id,
        selector_value: "qr-img"
      })
    })

    # Return the actions to be executed and clear the QR content state
    {%{qr_content: ""}, [show_result_container, change_qr_image]}
  end
end
