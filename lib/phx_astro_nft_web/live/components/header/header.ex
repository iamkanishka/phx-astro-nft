defmodule PhxAstroNftWeb.Components.Header.Header do
  use PhxAstroNftWeb, :live_component

  @impl true
  def mount(socket) do
    {:ok, assign(socket, show_search: false)}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <header
      @scroll.window="document.documentElement.classList.toggle('scrolled', window.scrollY > 10)"
      class="top-0 left-0 fixed w-full z-50 transition duration-300 ease-in-out"
      class="document.documentElement.classList.contains('scrolled') ? 'bg-white shadow-sticky backdrop-blur-xs' : 'bg-transparent'"
    >
      <div class="container">
        <div class="relative mx-[-16px] flex items-center justify-between">
          <div class="w-60 max-w-full px-4">
            <.link
              navigate={~p"/"}
              class="header-logo block w-full"
              class="scrolledFromTop ? 'py-4 lg:py-2' : 'py-5 lg:py-7'"
            >
              <img src={~p"/images/logo.svg"} alt="logo" class="h-10 max-w-full" />
            </.link>
          </div>

          <div class="flex w-full items-center justify-between px-4">
            <!-- Mobile Menu Toggle -->
            <div>
              <button
                @click="navbarOpen = !navbarOpen"
                class="navbarOpen ? 'navbarTogglerActive' : ''"
                id="navbarToggler"
                aria-label="navbarToggler"
                class="absolute right-4 top-1/2 block -translate-y-1/2 rounded-lg px-3 py-[6px] ring-primary focus:ring-2 lg:hidden"
              >
                <span
                  class="relative my-[6px] block h-[2px] w-[30px] bg-white"
                  class="navbarOpen ? 'transform rotate-45 top-[7px]' : ''"
                >
                </span>
                <span
                  class="relative my-[6px] block h-[2px] w-[30px] bg-white"
                  class="navbarOpen ? 'opacity-0' : ''"
                >
                </span>
                <span
                  class="relative my-[6px] block h-[2px] w-[30px] bg-white"
                  class="navbarOpen ? 'top-[-8px] rotate-[135deg]' : ''"
                >
                </span>
              </button>

    <!-- Navigation -->
              <nav
                id="navbarCollapse"
                class="!navbarOpen ? 'hidden' : ''"
                class="absolute right-4 top-full w-full max-w-[250px] rounded-lg bg-bg-color shadow-lg lg:static lg:block lg:w-full lg:max-w-full lg:bg-transparent py-3 lg:py-0 lg:px-4 lg:shadow-none xl:px-6"
              >
                <ul class="block lg:flex">
                  <li class="group relative">
                    <.link
                      navigate={~p"/"}
                      class="mx-8 flex py-2 text-base font-semibold text-white group-hover:text-white lg:mr-0 lg:inline-flex lg:py-6 lg:px-0"
                    >
                      Home
                    </.link>
                  </li>

                  <li class="group relative">
                    <.link
                      navigate={~p"/explore-items"}
                      class="mx-8 flex py-2 text-base font-semibold text-[#bababa] group-hover:text-white lg:mr-0 lg:ml-8 lg:inline-flex lg:py-6 lg:px-0 xl:ml-12"
                    >
                      Explore
                    </.link>
                  </li>

                  <li class="group relative">
                    <a
                      href="https://discord.com/invite/SxNNgXBAQS"
                      target="_blank"
                      rel="nofollow"
                      class="mx-8 flex py-2 text-base font-semibold text-[#bababa] group-hover:text-white lg:mr-0 lg:ml-8 lg:inline-flex lg:py-6 lg:px-0 xl:ml-12"
                    >
                      Community
                    </a>
                  </li>
                  <!-- Submenu -->
                  <li class="group submenu-item relative">
                    <a
                      href="#"
                      @click.prevent="submenuOpen = !submenuOpen"
                      aria-controls="pages-submenu"
                      class="relative mx-8 flex py-2 text-base font-semibold text-[#bababa] after:absolute after:right-1 after:top-1/2 after:mt-[-2px] after:h-2 after:w-2 after:translate-y-[-50%] after:rotate-45 after:border-b-2 after:border-r-2 after:border-current group-hover:text-white lg:mr-0 lg:ml-8 lg:inline-flex lg:py-6 lg:pl-0 lg:pr-4 lg:after:right-0 xl:ml-12"
                    >
                      Pages
                    </a>

                    <div
                      id="pages-submenu"
                      class="submenuOpen ? 'block' : 'hidden'"
                      class="submenu relative top-full left-0 w-[250px] rounded-md bg-dark p-4 transition-[top] duration-300 group-hover:opacity-100 lg:invisible lg:absolute lg:top-[110%] lg:block lg:opacity-0 lg:shadow-lg lg:group-hover:visible lg:group-hover:top-full"
                    >
                      <.link
                        navigate={~p"/explore-items"}
                        class="block rounded-sm py-[10px] px-4 text-sm font-medium text-[#bababa] hover:text-white"
                      >
                        Explore Items
                      </.link>

                      <.link
                        navigate={~p"/item-details"}
                        class="block rounded-sm py-[10px] px-4 text-sm font-medium text-[#bababa] hover:text-white"
                      >
                        Item Details
                      </.link>

                      <.link
                        navigate={~p"/create-item"}
                        class="block rounded-sm py-[10px] px-4 text-sm font-medium text-[#bababa] hover:text-white"
                      >
                        Create Item
                      </.link>

                      <.link
                        navigate={~p"/connect-wallet"}
                        class="block rounded-sm py-[10px] px-4 text-sm font-medium text-[#bababa] hover:text-white"
                      >
                        Connect Wallet
                      </.link>

                      <.link
                        navigate={~p"/support"}
                        class="block rounded-sm py-[10px] px-4 text-sm font-medium text-[#bababa] hover:text-white"
                      >
                        Support
                      </.link>

                      <.link
                        navigate={~p"/signin"}
                        class="block rounded-sm py-[10px] px-4 text-sm font-medium text-[#bababa] hover:text-white"
                      >
                        Sign In
                      </.link>

                      <.link
                        navigate={~p"/signup"}
                        class="block rounded-sm py-[10px] px-4 text-sm font-medium text-[#bababa] hover:text-white"
                      >
                        Sign Up
                      </.link>
                    </div>
                  </li>

                  <li class="group relative">
                    <.link
                      navigate={~p"/support"}
                      class="mx-8 flex py-2 text-base font-semibold text-[#bababa] group-hover:text-white lg:mr-0 lg:ml-8 lg:inline-flex lg:py-6 lg:px-0 xl:ml-12"
                    >
                      Support
                    </.link>
                  </li>
                </ul>
              </nav>
            </div>

    <!-- Right Side (Search & Wallet) -->
            <div class="hidden justify-end pr-16 sm:flex lg:pr-0">
              <!-- Search -->
              <div class="group relative hidden md:flex">
                <button
                  class="py-3 px-7 text-base font-semibold text-body-color transition hover:text-primary lg:px-4 xl:px-7"
                  aria-label="search"
                >
                  <%!-- <Heroicons.magnifying_glass solid class="h-6 w-6 text-white" /> --%>
                </button>

                <div class="invisible absolute top-[110%] right-0 w-[250px] rounded-md bg-dark p-3 opacity-0 transition-all group-hover:visible group-hover:top-full group-hover:opacity-100">
                  <form class="flex">
                    <input
                      type="text"
                      placeholder="Search here..."
                      class="w-full bg-transparent py-2 px-4 text-white outline-none"
                    />
                    <button class="text-white" aria-label="search-button">
                      <%!-- <Heroicons.magnifying_glass solid class="h-6 w-6" /> --%>
                    </button>
                  </form>
                </div>
              </div>

    <!-- Wallet Connect -->
              <.link
                navigate={~p"/connect-wallet"}
                class="flex items-center rounded-md border-2 border-white py-3 px-6 text-base font-semibold text-white transition duration-300 ease-in-out hover:border-primary hover:bg-primary lg:px-4 xl:px-6"
              >
                <span class="pr-2">
                  <%!-- <WalletIcon /> --%>
                </span>
                Wallet Connect
              </.link>
            </div>
          </div>
        </div>
      </div>
    </header>
    """
  end


end
