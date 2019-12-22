defmodule MyAppWeb.SpaceLive do
  use Phoenix.LiveView

  def mount(_session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <img src="https://i.imgur.com/eHqSyDa.png" alt="space" />
    <h3 class="text-center">LiveView is awesome!</h3>
    """
  end
end
