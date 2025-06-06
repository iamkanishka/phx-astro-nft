defmodule PhxAstroNftWeb.Components.Header.Header do
  use PhxAstroNftWeb, :live_component

  def render(assigns) do
    ~H"""
    <header class="fixed top-0 left-0 right-0 z-50 bg-[#0d0d1a] text-white w-full shadow-md">
      <div class="flex items-center justify-between px-6 py-4">
        <!-- Logo -->
        <div class="flex items-center gap-2">
          <img src="/images/logo.svg" alt="NFT Logo" class="w-6 h-6" />
          <span class="text-lg font-bold">NFT</span>
        </div>

        <!-- Desktop Navigation -->
        <nav class="hidden md:flex gap-8 items-center text-gray-300">
          <a href="#" class="hover:text-white transition">Home</a>
          <a href="#" class="hover:text-white transition">Explore</a>
          <a href="#" class="hover:text-white transition">Community</a>

          <div class="relative group">
            <button class="hover:text-white transition flex items-center gap-1">
              Pages
              <svg class="w-3 h-3" fill="currentColor" viewBox="0 0 20 20">
                <path fill-rule="evenodd" d="M5.23 7.21a.75.75 0 011.06.02L10 11.06l3.71-3.83a.75.75 0 111.08 1.04l-4.25 4.38a.75.75 0 01-1.08 0L5.21 8.27a.75.75 0 01.02-1.06z" clip-rule="evenodd" />
              </svg>
            </button>
            <div class="absolute left-0 mt-2 w-40 bg-white text-black rounded-md shadow-lg hidden group-hover:block z-10">
              <a href="#" class="block px-4 py-2 hover:bg-gray-100">About</a>
              <a href="#" class="block px-4 py-2 hover:bg-gray-100">FAQ</a>
            </div>
          </div>

          <a href="#" class="hover:text-white transition">Support</a>
        </nav>

        <!-- Desktop Wallet Button -->
        <div class="hidden md:flex items-center">
          <button class="border border-white px-4 py-2 rounded-md flex items-center gap-2 hover:bg-white hover:text-black transition">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 24 24" fill="currentColor">
              <path d="M20 7H4v10h16V7zM2 6.5A1.5 1.5 0 013.5 5h17A1.5 1.5 0 0122 6.5v11a1.5 1.5 0 01-1.5 1.5h-17A1.5 1.5 0 012 17.5v-11z" />
              <circle cx="16" cy="12" r="1.5" />
            </svg>
            <span>Wallet Connect</span>
          </button>
        </div>

        <!-- Mobile Hamburger -->
        <button phx-target={@myself} phx-click="toggle_menu" class="md:hidden">
          <svg :if={!@mobile_menu} xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none"
               viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M4 6h16M4 12h16M4 18h16"/>
          </svg>
          <svg :if={@mobile_menu} xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-purple-400 border border-white rounded-full p-1"
               fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M6 18L18 6M6 6l12 12"/>
          </svg>
        </button>
      </div>

      <!-- Mobile Menu -->
      <div :if={@mobile_menu} class="md:hidden bg-[#18182f] text-white px-6 py-4 space-y-3">
        <a href="#" class="block hover:text-purple-300">Home</a>
        <a href="#" class="block hover:text-purple-300">Explore</a>
        <a href="#" class="block hover:text-purple-300">Community</a>
        <div>
          <button class="flex items-center gap-2 hover:text-purple-300" phx-target={@myself} phx-click="toggle_dropdown">
            Pages
            <svg class="w-3 h-3" fill="currentColor" viewBox="0 0 20 20">
              <path fill-rule="evenodd" d="M5.23 7.21a.75.75 0 011.06.02L10 11.06l3.71-3.83a.75.75 0 111.08 1.04l-4.25 4.38a.75.75 0 01-1.08 0L5.21 8.27a.75.75 0 01.02-1.06z" clip-rule="evenodd" />
            </svg>
          </button>
          <div :if={@dropdown_open} class="ml-4 mt-1 space-y-1 text-sm">
            <a href="#" class="block hover:text-purple-300">About</a>
            <a href="#" class="block hover:text-purple-300">FAQ</a>
          </div>
        </div>
        <a href="#" class="block hover:text-purple-300">Support</a>
        <button class="mt-4 border border-white px-4 py-2 rounded-md flex items-center gap-2 hover:bg-white hover:text-black transition w-full justify-center">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 24 24" fill="currentColor">
            <path d="M20 7H4v10h16V7zM2 6.5A1.5 1.5 0 013.5 5h17A1.5 1.5 0 0122 6.5v11a1.5 1.5 0 01-1.5 1.5h-17A1.5 1.5 0 012 17.5v-11z" />
            <circle cx="16" cy="12" r="1.5" />
          </svg>
          <span>Wallet Connect</span>
        </button>
      </div>
    </header>
    """
  end

  def update(assigns, socket) do
    socket =
      socket
      |> assign_new(:mobile_menu, fn -> false end)
      |> assign_new(:dropdown_open, fn -> false end)

    {:ok, assign(socket, assigns)}
  end

  def handle_event("toggle_menu", _, socket) do
    {:noreply, update(socket, :mobile_menu, &(!&1))}
  end

  def handle_event("toggle_dropdown", _, socket) do
    {:noreply, update(socket, :dropdown_open, &(!&1))}
  end
end
