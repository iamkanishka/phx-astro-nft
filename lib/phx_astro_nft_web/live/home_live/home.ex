defmodule PhxAstroNftWeb.HomeLive.Home do
  use PhxAstroNftWeb, :live_view

  def render(assigns) do
    ~H"""
    <header
      x-data="{ navbarOpen: false, submenuOpen: false }"
      class="header top-0 left-0 flex w-full items-center bg-transparent transition fixed"
      class="scrolledFromTop ? 'z-50 bg-dark/70 shadow-sticky backdrop-blur-xs' : 'z-50'"
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

    <!-- ==== Hero Section Start ==== -->

    <section
      id="home"
      class="relative z-10 overflow-hidden bg-cover bg-top bg-no-repeat pt-[150px] pb-24"
      style="background-image: url('./images/hero/common-bg.jpg')"
    >
      <div
        class="absolute left-0 top-0 -z-10 h-full w-full"
        style="background: linear-gradient(180deg, rgba(20, 20, 32, 0.65) 0%, #141420 100%)"
      >
      </div>

      <div class="container">
        <div class="-mx-4 flex flex-wrap items-center">
          <div class="w-full px-4 lg:w-1/2">
            <div class="mb-12 max-w-[570px] lg:mb-0">
              <h1 class="mb-4 text-[40px] font-bold leading-tight text-white md:text-[50px] lg:text-[40px] xl:text-[46px] 2xl:text-[50px] sm:text-[46px]">
                Tailwind Template for NFT Marketplace and Web3 Platforms
              </h1>

              <p class="mb-8 text-lg font-medium leading-relaxed text-body-color md:pr-14">
                Template for NFT, Token, and Web3 marketplace projects, based on Tailwind CSS. Comes with all the essential UI components and pages you need to build an NFT marketplace or all sorts of
                Web3 platforms.
              </p>

              <div class="flex flex-wrap items-center">
                <a
                  href="explore-items.html"
                  class="mr-5 mb-5 inline-flex items-center justify-center rounded-md border-2 border-primary bg-primary py-3 px-7 text-base font-semibold text-white transition-all hover:bg-primary/90"
                >
                  Explore now
                </a>

                <a
                  href="create-item.html"
                  class="mb-5 inline-flex items-center justify-center rounded-md border-2 border-white py-3 px-7 text-base font-semibold text-white transition-all hover:border-primary hover:bg-primary"
                >
                  Upload Your Art
                </a>
              </div>
            </div>
          </div>

          <div class="w-full px-4 lg:w-1/2">
            <div class="text-center">
              <img src="/images/hero/hero-image.svg" alt="hero image" class="mx-auto max-w-full" />
            </div>
          </div>
        </div>
      </div>

      <div></div>
    </section>
    <!-- ==== Hero Section End ==== -->

    <!-- ==== Artists Section Start ==== -->
    <section class="pt-5">
      <div class="container">
        <div class="mb-12 border-b border-white/10">
          <div class="-mx-4 flex">
            <div class="w-full px-4">
              <h2 class="mb-5 text-3xl font-bold text-white">Top Artists</h2>
            </div>
          </div>
        </div>

        <div class="relative">
          <div class="artists-slider -mx-4 flex flex-wrap">
            <div class="w-full px-4 md:w-1/2 xl:w-1/3 2xl:w-1/4">
              <div class="gradient-bg mb-5 rounded-xl p-[2px]">
                <div class="flex items-center rounded-xl bg-bg-color p-6">
                  <div class="mr-5 h-[70px] w-full max-w-[70px] overflow-hidden rounded-lg">
                    <img
                      src="/images/artists/image-01.png"
                      alt="artists"
                      class="h-full w-full object-cover object-center"
                    />
                  </div>

                  <div class="w-full">
                    <h3 class="truncate text-lg font-semibold text-white">@Devid_Miller</h3>
                     <span class="text-base font-semibold text-secondary"> 14.55 ETH </span>
                  </div>
                </div>
              </div>
            </div>

            <div class="w-full px-4 md:w-1/2 xl:w-1/3 2xl:w-1/4">
              <div class="gradient-bg mb-5 rounded-xl p-[2px]">
                <div class="flex items-center rounded-xl bg-bg-color p-6">
                  <div class="mr-5 h-[70px] w-full max-w-[70px] overflow-hidden rounded-lg">
                    <img
                      src="/images/artists/image-01.png"
                      alt="artists"
                      class="h-full w-full object-cover object-center"
                    />
                  </div>

                  <div class="w-full">
                    <h3 class="truncate text-lg font-semibold text-white">@Devid_Miller</h3>
                     <span class="text-base font-semibold text-secondary"> 14.55 ETH </span>
                  </div>
                </div>
              </div>
            </div>

            <div class="w-full px-4 md:w-1/2 xl:w-1/3 2xl:w-1/4">
              <div class="gradient-bg mb-5 rounded-xl p-[2px]">
                <div class="flex items-center rounded-xl bg-bg-color p-6">
                  <div class="mr-5 h-[70px] w-full max-w-[70px] overflow-hidden rounded-lg">
                    <img
                      src="/images/artists/image-02.png"
                      alt="artists"
                      class="h-full w-full object-cover object-center"
                    />
                  </div>

                  <div class="w-full">
                    <h3 class="truncate text-lg font-semibold text-white">@Elon_Mask</h3>
                     <span class="text-base font-semibold text-secondary"> 12.25 ETH </span>
                  </div>
                </div>
              </div>
            </div>

            <div class="w-full px-4 md:w-1/2 xl:w-1/3 2xl:w-1/4">
              <div class="gradient-bg mb-5 rounded-xl p-[2px]">
                <div class="flex items-center rounded-xl bg-bg-color p-6">
                  <div class="mr-5 h-[70px] w-full max-w-[70px] overflow-hidden rounded-lg">
                    <img
                      src="/images/artists/image-03.png"
                      alt="artists"
                      class="h-full w-full object-cover object-center"
                    />
                  </div>

                  <div class="w-full">
                    <h3 class="truncate text-lg font-semibold text-white">@Hiliya_Farah</h3>
                     <span class="text-base font-semibold text-secondary"> 9.89 ETH </span>
                  </div>
                </div>
              </div>
            </div>

            <div class="w-full px-4 md:w-1/2 xl:w-1/3 2xl:w-1/4">
              <div class="gradient-bg mb-5 rounded-xl p-[2px]">
                <div class="flex items-center rounded-xl bg-bg-color p-6">
                  <div class="mr-5 h-[70px] w-full max-w-[70px] overflow-hidden rounded-lg">
                    <img
                      src="/images/artists/image-04.png"
                      alt="artists"
                      class="h-full w-full object-cover object-center"
                    />
                  </div>

                  <div class="w-full">
                    <h3 class="truncate text-lg font-semibold text-white">@Wilium_Dev</h3>
                     <span class="text-base font-semibold text-secondary"> 2.09 ETH </span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ==== Artists Section End ==== -->

    <!-- ==== Auctions Section Start ==== -->
    <section class="pt-12 flex flex-row justify-center">
      <div class="container">
        <div class="mb-12 border-b border-white/10">
          <div class="justify-between sm:flex">
            <h2 class="mb-4 text-3xl font-bold leading-none text-white">Live Auctions</h2>

            <a
              href="javascript:void(0)"
              class="mb-5 inline-flex items-center justify-center rounded-md bg-primary py-[10px] px-6 text-base font-semibold text-white transition-all hover:bg-primary/90"
            >
              View All
            </a>
          </div>
        </div>

        <div class="-mx-4 flex flex-wrap">
          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="mb-10 rounded-xl border border-stroke bg-bg-color p-[18px]">
              <div class="relative mb-5 overflow-hidden rounded-lg">
                <img src="/images/auctions/image-01.svg" alt="auctions" class="w-full" />
                <button class="absolute right-4 top-4 inline-flex items-center rounded-md bg-white px-2 py-1">
                  <svg
                    width="14"
                    height="14"
                    viewBox="0 0 14 14"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M6.99999 11.8709L6.15416 11.1009C3.14999 8.37675 1.16666 6.57425 1.16666 4.37508C1.16666 2.57258 2.57832 1.16675 4.37499 1.16675C5.38999 1.16675 6.36416 1.63925 6.99999 2.38008C7.63582 1.63925 8.60999 1.16675 9.62499 1.16675C11.4217 1.16675 12.8333 2.57258 12.8333 4.37508C12.8333 6.57425 10.85 8.37675 7.84582 11.1009L6.99999 11.8709Z"
                      fill="#F85486"
                    >
                    </path>
                  </svg>
                   <span class="pl-1 text-xs font-semibold text-black"> 4.6K </span>
                </button>
              </div>

              <div>
                <h3>
                  <a
                    href="javascript:void(0)"
                    class="mb-3 inline-block text-lg font-semibold text-white hover:text-primary"
                  >
                    22-Bit Digital #551
                  </a>
                </h3>

                <div class="mb-5 flex items-center justify-between">
                  <div class="w-full">
                    <div class="flex items-center">
                      <div class="mr-2 h-8 w-full max-w-[32px] rounded-md">
                        <img
                          src="/images/auctions/creator-01.png"
                          alt="creator"
                          class="h-full w-full object-cover object-center"
                        />
                      </div>

                      <div class="w-full">
                        <h4 class="text-xs font-semibold text-white">
                          @Devid_Mill...
                          <span class="block text-xs font-medium text-body-color"> creator </span>
                        </h4>
                      </div>
                    </div>
                  </div>

                  <div class="w-full">
                    <h5 class="text-right text-xs font-semibold text-white">
                      5.49 ETH
                      <span class="block text-xs font-medium text-body-color"> Current Bit </span>
                    </h5>
                  </div>
                </div>

                <div class="flex items-center justify-center rounded-md bg-white/10 p-[10px] text-base font-semibold text-white">
                  05 : 15 : 07 : 45
                </div>
              </div>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="mb-10 rounded-xl border border-stroke bg-bg-color p-[18px]">
              <div class="relative mb-5 overflow-hidden rounded-lg">
                <img src="/images/auctions/image-02.svg" alt="auctions" class="w-full" />
                <button class="absolute right-4 top-4 inline-flex items-center rounded-md bg-white px-2 py-1">
                  <svg
                    width="14"
                    height="14"
                    viewBox="0 0 14 14"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M6.99999 11.8709L6.15416 11.1009C3.14999 8.37675 1.16666 6.57425 1.16666 4.37508C1.16666 2.57258 2.57832 1.16675 4.37499 1.16675C5.38999 1.16675 6.36416 1.63925 6.99999 2.38008C7.63582 1.63925 8.60999 1.16675 9.62499 1.16675C11.4217 1.16675 12.8333 2.57258 12.8333 4.37508C12.8333 6.57425 10.85 8.37675 7.84582 11.1009L6.99999 11.8709Z"
                      fill="#F85486"
                    >
                    </path>
                  </svg>
                   <span class="pl-1 text-xs font-semibold text-black"> 1.6K </span>
                </button>
              </div>

              <div>
                <h3>
                  <a
                    href="javascript:void(0)"
                    class="mb-3 inline-block text-lg font-semibold text-white hover:text-primary"
                  >
                    25-Bit Digital #729
                  </a>
                </h3>

                <div class="mb-5 flex items-center justify-between">
                  <div class="w-full">
                    <div class="flex items-center">
                      <div class="mr-2 h-8 w-full max-w-[32px] rounded-md">
                        <img
                          src="/images/auctions/creator-02.png"
                          alt="creator"
                          class="h-full w-full object-cover object-center"
                        />
                      </div>

                      <div class="w-full">
                        <h4 class="text-xs font-semibold text-white">
                          @Devid_Meth...
                          <span class="block text-xs font-medium text-body-color"> creator </span>
                        </h4>
                      </div>
                    </div>
                  </div>

                  <div class="w-full">
                    <h5 class="text-right text-xs font-semibold text-white">
                      1.58 ETH
                      <span class="block text-xs font-medium text-body-color"> Current Bit </span>
                    </h5>
                  </div>
                </div>

                <div class="flex items-center justify-center rounded-md bg-white/10 p-[10px] text-base font-semibold text-white">
                  06 : 15 : 07 : 55
                </div>
              </div>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="mb-10 rounded-xl border border-stroke bg-bg-color p-[18px]">
              <div class="relative mb-5 overflow-hidden rounded-lg">
                <img src="/images/auctions/image-03.svg" alt="auctions" class="w-full" />
                <button class="absolute right-4 top-4 inline-flex items-center rounded-md bg-white px-2 py-1">
                  <svg
                    width="14"
                    height="14"
                    viewBox="0 0 14 14"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M6.99999 11.8709L6.15416 11.1009C3.14999 8.37675 1.16666 6.57425 1.16666 4.37508C1.16666 2.57258 2.57832 1.16675 4.37499 1.16675C5.38999 1.16675 6.36416 1.63925 6.99999 2.38008C7.63582 1.63925 8.60999 1.16675 9.62499 1.16675C11.4217 1.16675 12.8333 2.57258 12.8333 4.37508C12.8333 6.57425 10.85 8.37675 7.84582 11.1009L6.99999 11.8709Z"
                      fill="#F85486"
                    >
                    </path>
                  </svg>
                   <span class="pl-1 text-xs font-semibold text-black"> 500 </span>
                </button>
              </div>

              <div>
                <h3>
                  <a
                    href="javascript:void(0)"
                    class="mb-3 inline-block text-lg font-semibold text-white hover:text-primary"
                  >
                    27-Bit Digital #395
                  </a>
                </h3>

                <div class="mb-5 flex items-center justify-between">
                  <div class="w-full">
                    <div class="flex items-center">
                      <div class="mr-2 h-8 w-full max-w-[32px] rounded-md">
                        <img
                          src="/images/auctions/creator-03.png"
                          alt="creator"
                          class="h-full w-full object-cover object-center"
                        />
                      </div>

                      <div class="w-full">
                        <h4 class="text-xs font-semibold text-white">
                          @Jemmy_Fra...
                          <span class="block text-xs font-medium text-body-color"> creator </span>
                        </h4>
                      </div>
                    </div>
                  </div>

                  <div class="w-full">
                    <h5 class="text-right text-xs font-semibold text-white">
                      3.25 ETH
                      <span class="block text-xs font-medium text-body-color"> Current Bit </span>
                    </h5>
                  </div>
                </div>

                <div class="flex items-center justify-center rounded-md bg-white/10 p-[10px] text-base font-semibold text-white">
                  02 : 15 : 08 : 44
                </div>
              </div>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="mb-10 rounded-xl border border-stroke bg-bg-color p-[18px]">
              <div class="relative mb-5 overflow-hidden rounded-lg">
                <img src="/images/auctions/image-04.svg" alt="auctions" class="w-full" />
                <button class="absolute right-4 top-4 inline-flex items-center rounded-md bg-white px-2 py-1">
                  <svg
                    width="14"
                    height="14"
                    viewBox="0 0 14 14"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M6.99999 11.8709L6.15416 11.1009C3.14999 8.37675 1.16666 6.57425 1.16666 4.37508C1.16666 2.57258 2.57832 1.16675 4.37499 1.16675C5.38999 1.16675 6.36416 1.63925 6.99999 2.38008C7.63582 1.63925 8.60999 1.16675 9.62499 1.16675C11.4217 1.16675 12.8333 2.57258 12.8333 4.37508C12.8333 6.57425 10.85 8.37675 7.84582 11.1009L6.99999 11.8709Z"
                      fill="#F85486"
                    >
                    </path>
                  </svg>
                   <span class="pl-1 text-xs font-semibold text-black"> 200 </span>
                </button>
              </div>

              <div>
                <h3>
                  <a
                    href="javascript:void(0)"
                    class="mb-3 inline-block text-lg font-semibold text-white hover:text-primary"
                  >
                    35-Bit Digital #439
                  </a>
                </h3>

                <div class="mb-5 flex items-center justify-between">
                  <div class="w-full">
                    <div class="flex items-center">
                      <div class="mr-2 h-8 w-full max-w-[32px] rounded-md">
                        <img
                          src="/images/auctions/creator-04.png"
                          alt="creator"
                          class="h-full w-full object-cover object-center"
                        />
                      </div>

                      <div class="w-full">
                        <h4 class="text-xs font-semibold text-white">
                          @Miliya_Cho...
                          <span class="block text-xs font-medium text-body-color"> creator </span>
                        </h4>
                      </div>
                    </div>
                  </div>

                  <div class="w-full">
                    <h5 class="text-right text-xs font-semibold text-white">
                      1.57 ETH
                      <span class="block text-xs font-medium text-body-color"> Current Bit </span>
                    </h5>
                  </div>
                </div>

                <div class="flex items-center justify-center rounded-md bg-white/10 p-[10px] text-base font-semibold text-white">
                  07 : 15 : 03 : 12
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ==== Auctions Section End ==== -->

    <!-- ==== Today's Picks Section Start ==== -->
    <section class="pt-8">
      <div class="container">
        <div class="mb-12 border-b border-white/10">
          <div class="justify-between sm:flex">
            <h2 class="mb-4 text-3xl font-bold leading-none text-white">Today's Picks</h2>

            <a
              href="javascript:void(0)"
              class="mb-5 inline-flex items-center justify-center rounded-md bg-primary py-[10px] px-6 text-base font-semibold text-white transition-all hover:bg-primary/90"
            >
              View All
            </a>
          </div>
        </div>

        <div class="-mx-4 flex flex-wrap">
          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="mb-10 rounded-xl border border-stroke bg-bg-color p-[18px]">
              <div class="relative mb-5 overflow-hidden rounded-lg">
                <img src="/images/picks/image-01.svg" alt="auctions" class="w-full" />
                <button class="absolute right-4 top-4 inline-flex items-center rounded-md bg-white px-2 py-1">
                  <svg
                    width="14"
                    height="14"
                    viewBox="0 0 14 14"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M6.99999 11.8709L6.15416 11.1009C3.14999 8.37675 1.16666 6.57425 1.16666 4.37508C1.16666 2.57258 2.57832 1.16675 4.37499 1.16675C5.38999 1.16675 6.36416 1.63925 6.99999 2.38008C7.63582 1.63925 8.60999 1.16675 9.62499 1.16675C11.4217 1.16675 12.8333 2.57258 12.8333 4.37508C12.8333 6.57425 10.85 8.37675 7.84582 11.1009L6.99999 11.8709Z"
                      fill="#F85486"
                    >
                    </path>
                  </svg>
                   <span class="pl-1 text-xs font-semibold text-black"> 4.6K </span>
                </button>
              </div>

              <div>
                <h3>
                  <a
                    href="javascript:void(0)"
                    class="mb-3 inline-block text-lg font-semibold text-white hover:text-primary"
                  >
                    3d abstract illustration
                  </a>
                </h3>

                <div class="mb-6 flex items-center justify-between">
                  <div class="w-full">
                    <div class="flex items-center">
                      <div class="mr-2 h-8 w-full max-w-[32px] rounded-md">
                        <img
                          src="/images/picks/creator-01.png"
                          alt="creator"
                          class="h-full w-full object-cover object-center"
                        />
                      </div>

                      <div class="w-full">
                        <h4 class="text-xs font-semibold text-white">
                          @Devid_Mill...
                          <span class="block text-xs font-medium text-body-color"> creator </span>
                        </h4>
                      </div>
                    </div>
                  </div>

                  <div class="w-full">
                    <h5 class="text-right text-xs font-semibold text-white">
                      5.49 ETH
                      <span class="block text-xs font-medium text-body-color"> Current Bit </span>
                    </h5>
                  </div>
                </div>

                <div class="flex items-center justify-between border-t-2 border-stroke pt-5">
                  <a
                    href="javascript:void(0)"
                    class="flex items-center justify-center rounded-md bg-primary py-3 px-4 text-sm font-semibold text-white transition-all hover:bg-primary/90 sm:px-5"
                  >
                    Place Bid
                  </a>

                  <a
                    href="javascript:void(0)"
                    class="flex items-center justify-center rounded-md py-3 px-4 text-sm font-semibold text-white hover:text-primary sm:px-5"
                  >
                    <span class="pr-1">
                      <svg
                        width="18"
                        height="18"
                        viewBox="0 0 18 18"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M9 4.5V6.75L12 3.75L9 0.75V3C7.4087 3 5.88258 3.63214 4.75736 4.75736C3.63214 5.88258 3 7.4087 3 9C3 10.1775 3.345 11.2725 3.93 12.195L5.025 11.1C4.6875 10.4775 4.5 9.75 4.5 9C4.5 7.80653 4.97411 6.66193 5.81802 5.81802C6.66193 4.97411 7.80652 4.5 9 4.5ZM14.07 5.805L12.975 6.9C13.305 7.53 13.5 8.25 13.5 9C13.5 10.1935 13.0259 11.3381 12.182 12.182C11.3381 13.0259 10.1935 13.5 9 13.5V11.25L6 14.25L9 17.25V15C10.5913 15 12.1174 14.3679 13.2426 13.2426C14.3679 12.1174 15 10.5913 15 9C15 7.8225 14.655 6.7275 14.07 5.805Z"
                          fill="currentColor"
                        >
                        </path>
                      </svg>
                    </span>
                    View History
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="mb-10 rounded-xl border border-stroke bg-bg-color p-[18px]">
              <div class="relative mb-5 overflow-hidden rounded-lg">
                <img src="/images/picks/image-02.svg" alt="auctions" class="w-full" />
                <button class="absolute right-4 top-4 inline-flex items-center rounded-md bg-white px-2 py-1">
                  <svg
                    width="14"
                    height="14"
                    viewBox="0 0 14 14"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M6.99999 11.8709L6.15416 11.1009C3.14999 8.37675 1.16666 6.57425 1.16666 4.37508C1.16666 2.57258 2.57832 1.16675 4.37499 1.16675C5.38999 1.16675 6.36416 1.63925 6.99999 2.38008C7.63582 1.63925 8.60999 1.16675 9.62499 1.16675C11.4217 1.16675 12.8333 2.57258 12.8333 4.37508C12.8333 6.57425 10.85 8.37675 7.84582 11.1009L6.99999 11.8709Z"
                      fill="#F85486"
                    >
                    </path>
                  </svg>
                   <span class="pl-1 text-xs font-semibold text-black"> 1.6K </span>
                </button>
              </div>

              <div>
                <h3>
                  <a
                    href="javascript:void(0)"
                    class="mb-3 inline-block text-lg font-semibold text-white hover:text-primary"
                  >
                    3d abstract illustration
                  </a>
                </h3>

                <div class="mb-6 flex items-center justify-between">
                  <div class="w-full">
                    <div class="flex items-center">
                      <div class="mr-2 h-8 w-full max-w-[32px] rounded-md">
                        <img
                          src="/images/picks/creator-02.png"
                          alt="creator"
                          class="h-full w-full object-cover object-center"
                        />
                      </div>

                      <div class="w-full">
                        <h4 class="text-xs font-semibold text-white">
                          @Wilium_de...
                          <span class="block text-xs font-medium text-body-color"> creator </span>
                        </h4>
                      </div>
                    </div>
                  </div>

                  <div class="w-full">
                    <h5 class="text-right text-xs font-semibold text-white">
                      2.85 ETH
                      <span class="block text-xs font-medium text-body-color"> Current Bit </span>
                    </h5>
                  </div>
                </div>

                <div class="flex items-center justify-between border-t-2 border-stroke pt-5">
                  <a
                    href="javascript:void(0)"
                    class="flex items-center justify-center rounded-md bg-primary py-3 px-4 text-sm font-semibold text-white transition-all hover:bg-primary/90 sm:px-5"
                  >
                    Place Bid
                  </a>

                  <a
                    href="javascript:void(0)"
                    class="flex items-center justify-center rounded-md py-3 px-4 text-sm font-semibold text-white hover:text-primary sm:px-5"
                  >
                    <span class="pr-1">
                      <svg
                        width="18"
                        height="18"
                        viewBox="0 0 18 18"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M9 4.5V6.75L12 3.75L9 0.75V3C7.4087 3 5.88258 3.63214 4.75736 4.75736C3.63214 5.88258 3 7.4087 3 9C3 10.1775 3.345 11.2725 3.93 12.195L5.025 11.1C4.6875 10.4775 4.5 9.75 4.5 9C4.5 7.80653 4.97411 6.66193 5.81802 5.81802C6.66193 4.97411 7.80652 4.5 9 4.5ZM14.07 5.805L12.975 6.9C13.305 7.53 13.5 8.25 13.5 9C13.5 10.1935 13.0259 11.3381 12.182 12.182C11.3381 13.0259 10.1935 13.5 9 13.5V11.25L6 14.25L9 17.25V15C10.5913 15 12.1174 14.3679 13.2426 13.2426C14.3679 12.1174 15 10.5913 15 9C15 7.8225 14.655 6.7275 14.07 5.805Z"
                          fill="currentColor"
                        >
                        </path>
                      </svg>
                    </span>
                    View History
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="mb-10 rounded-xl border border-stroke bg-bg-color p-[18px]">
              <div class="relative mb-5 overflow-hidden rounded-lg">
                <img src="/images/picks/image-03.svg" alt="auctions" class="w-full" />
                <button class="absolute right-4 top-4 inline-flex items-center rounded-md bg-white px-2 py-1">
                  <svg
                    width="14"
                    height="14"
                    viewBox="0 0 14 14"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M6.99999 11.8709L6.15416 11.1009C3.14999 8.37675 1.16666 6.57425 1.16666 4.37508C1.16666 2.57258 2.57832 1.16675 4.37499 1.16675C5.38999 1.16675 6.36416 1.63925 6.99999 2.38008C7.63582 1.63925 8.60999 1.16675 9.62499 1.16675C11.4217 1.16675 12.8333 2.57258 12.8333 4.37508C12.8333 6.57425 10.85 8.37675 7.84582 11.1009L6.99999 11.8709Z"
                      fill="#F85486"
                    >
                    </path>
                  </svg>
                   <span class="pl-1 text-xs font-semibold text-black"> 4.6K </span>
                </button>
              </div>

              <div>
                <h3>
                  <a
                    href="javascript:void(0)"
                    class="mb-3 inline-block text-lg font-semibold text-white hover:text-primary"
                  >
                    3d abstract illustration
                  </a>
                </h3>

                <div class="mb-6 flex items-center justify-between">
                  <div class="w-full">
                    <div class="flex items-center">
                      <div class="mr-2 h-8 w-full max-w-[32px] rounded-md">
                        <img
                          src="/images/picks/creator-03.png"
                          alt="creator"
                          class="h-full w-full object-cover object-center"
                        />
                      </div>

                      <div class="w-full">
                        <h4 class="text-xs font-semibold text-white">
                          @Nicolo_Tes...
                          <span class="block text-xs font-medium text-body-color"> creator </span>
                        </h4>
                      </div>
                    </div>
                  </div>

                  <div class="w-full">
                    <h5 class="text-right text-xs font-semibold text-white">
                      7.82 ETH
                      <span class="block text-xs font-medium text-body-color"> Current Bit </span>
                    </h5>
                  </div>
                </div>

                <div class="flex items-center justify-between border-t-2 border-stroke pt-5">
                  <a
                    href="javascript:void(0)"
                    class="flex items-center justify-center rounded-md bg-primary py-3 px-4 text-sm font-semibold text-white transition-all hover:bg-primary/90 sm:px-5"
                  >
                    Place Bid
                  </a>

                  <a
                    href="javascript:void(0)"
                    class="flex items-center justify-center rounded-md py-3 px-4 text-sm font-semibold text-white hover:text-primary sm:px-5"
                  >
                    <span class="pr-1">
                      <svg
                        width="18"
                        height="18"
                        viewBox="0 0 18 18"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M9 4.5V6.75L12 3.75L9 0.75V3C7.4087 3 5.88258 3.63214 4.75736 4.75736C3.63214 5.88258 3 7.4087 3 9C3 10.1775 3.345 11.2725 3.93 12.195L5.025 11.1C4.6875 10.4775 4.5 9.75 4.5 9C4.5 7.80653 4.97411 6.66193 5.81802 5.81802C6.66193 4.97411 7.80652 4.5 9 4.5ZM14.07 5.805L12.975 6.9C13.305 7.53 13.5 8.25 13.5 9C13.5 10.1935 13.0259 11.3381 12.182 12.182C11.3381 13.0259 10.1935 13.5 9 13.5V11.25L6 14.25L9 17.25V15C10.5913 15 12.1174 14.3679 13.2426 13.2426C14.3679 12.1174 15 10.5913 15 9C15 7.8225 14.655 6.7275 14.07 5.805Z"
                          fill="currentColor"
                        >
                        </path>
                      </svg>
                    </span>
                    View History
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="mb-10 rounded-xl border border-stroke bg-bg-color p-[18px]">
              <div class="relative mb-5 overflow-hidden rounded-lg">
                <img src="/images/picks/image-04.svg" alt="auctions" class="w-full" />
                <button class="absolute right-4 top-4 inline-flex items-center rounded-md bg-white px-2 py-1">
                  <svg
                    width="14"
                    height="14"
                    viewBox="0 0 14 14"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M6.99999 11.8709L6.15416 11.1009C3.14999 8.37675 1.16666 6.57425 1.16666 4.37508C1.16666 2.57258 2.57832 1.16675 4.37499 1.16675C5.38999 1.16675 6.36416 1.63925 6.99999 2.38008C7.63582 1.63925 8.60999 1.16675 9.62499 1.16675C11.4217 1.16675 12.8333 2.57258 12.8333 4.37508C12.8333 6.57425 10.85 8.37675 7.84582 11.1009L6.99999 11.8709Z"
                      fill="#F85486"
                    >
                    </path>
                  </svg>
                   <span class="pl-1 text-xs font-semibold text-black"> 4.6K </span>
                </button>
              </div>

              <div>
                <h3>
                  <a
                    href="javascript:void(0)"
                    class="mb-3 inline-block text-lg font-semibold text-white hover:text-primary"
                  >
                    3d abstract illustration
                  </a>
                </h3>

                <div class="mb-6 flex items-center justify-between">
                  <div class="w-full">
                    <div class="flex items-center">
                      <div class="mr-2 h-8 w-full max-w-[32px] rounded-md">
                        <img
                          src="/images/picks/creator-04.png"
                          alt="creator"
                          class="h-full w-full object-cover object-center"
                        />
                      </div>

                      <div class="w-full">
                        <h4 class="text-xs font-semibold text-white">
                          @Liza_Auro...
                          <span class="block text-xs font-medium text-body-color"> creator </span>
                        </h4>
                      </div>
                    </div>
                  </div>

                  <div class="w-full">
                    <h5 class="text-right text-xs font-semibold text-white">
                      0.25 ETH
                      <span class="block text-xs font-medium text-body-color"> Current Bit </span>
                    </h5>
                  </div>
                </div>

                <div class="flex items-center justify-between border-t-2 border-stroke pt-5">
                  <a
                    href="javascript:void(0)"
                    class="flex items-center justify-center rounded-md bg-primary py-3 px-4 text-sm font-semibold text-white transition-all hover:bg-primary/90 sm:px-5"
                  >
                    Place Bid
                  </a>

                  <a
                    href="javascript:void(0)"
                    class="flex items-center justify-center rounded-md py-3 px-4 text-sm font-semibold text-white hover:text-primary sm:px-5"
                  >
                    <span class="pr-1">
                      <svg
                        width="18"
                        height="18"
                        viewBox="0 0 18 18"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M9 4.5V6.75L12 3.75L9 0.75V3C7.4087 3 5.88258 3.63214 4.75736 4.75736C3.63214 5.88258 3 7.4087 3 9C3 10.1775 3.345 11.2725 3.93 12.195L5.025 11.1C4.6875 10.4775 4.5 9.75 4.5 9C4.5 7.80653 4.97411 6.66193 5.81802 5.81802C6.66193 4.97411 7.80652 4.5 9 4.5ZM14.07 5.805L12.975 6.9C13.305 7.53 13.5 8.25 13.5 9C13.5 10.1935 13.0259 11.3381 12.182 12.182C11.3381 13.0259 10.1935 13.5 9 13.5V11.25L6 14.25L9 17.25V15C10.5913 15 12.1174 14.3679 13.2426 13.2426C14.3679 12.1174 15 10.5913 15 9C15 7.8225 14.655 6.7275 14.07 5.805Z"
                          fill="currentColor"
                        >
                        </path>
                      </svg>
                    </span>
                    View History
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="mb-10 rounded-xl border border-stroke bg-bg-color p-[18px]">
              <div class="relative mb-5 overflow-hidden rounded-lg">
                <img src="/images/picks/image-05.svg" alt="auctions" class="w-full" />
                <button class="absolute right-4 top-4 inline-flex items-center rounded-md bg-white px-2 py-1">
                  <svg
                    width="14"
                    height="14"
                    viewBox="0 0 14 14"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M6.99999 11.8709L6.15416 11.1009C3.14999 8.37675 1.16666 6.57425 1.16666 4.37508C1.16666 2.57258 2.57832 1.16675 4.37499 1.16675C5.38999 1.16675 6.36416 1.63925 6.99999 2.38008C7.63582 1.63925 8.60999 1.16675 9.62499 1.16675C11.4217 1.16675 12.8333 2.57258 12.8333 4.37508C12.8333 6.57425 10.85 8.37675 7.84582 11.1009L6.99999 11.8709Z"
                      fill="#F85486"
                    >
                    </path>
                  </svg>
                   <span class="pl-1 text-xs font-semibold text-black"> 4.6K </span>
                </button>
              </div>

              <div>
                <h3>
                  <a
                    href="javascript:void(0)"
                    class="mb-3 inline-block text-lg font-semibold text-white hover:text-primary"
                  >
                    3d abstract illustration
                  </a>
                </h3>

                <div class="mb-6 flex items-center justify-between">
                  <div class="w-full">
                    <div class="flex items-center">
                      <div class="mr-2 h-8 w-full max-w-[32px] rounded-md">
                        <img
                          src="/images/picks/creator-05.png"
                          alt="creator"
                          class="h-full w-full object-cover object-center"
                        />
                      </div>

                      <div class="w-full">
                        <h4 class="text-xs font-semibold text-white">
                          @Lathium_Lui...
                          <span class="block text-xs font-medium text-body-color"> creator </span>
                        </h4>
                      </div>
                    </div>
                  </div>

                  <div class="w-full">
                    <h5 class="text-right text-xs font-semibold text-white">
                      3.24 ETH
                      <span class="block text-xs font-medium text-body-color"> Current Bit </span>
                    </h5>
                  </div>
                </div>

                <div class="flex items-center justify-between border-t-2 border-stroke pt-5">
                  <a
                    href="javascript:void(0)"
                    class="flex items-center justify-center rounded-md bg-primary py-3 px-4 text-sm font-semibold text-white transition-all hover:bg-primary/90 sm:px-5"
                  >
                    Place Bid
                  </a>

                  <a
                    href="javascript:void(0)"
                    class="flex items-center justify-center rounded-md py-3 px-4 text-sm font-semibold text-white hover:text-primary sm:px-5"
                  >
                    <span class="pr-1">
                      <svg
                        width="18"
                        height="18"
                        viewBox="0 0 18 18"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M9 4.5V6.75L12 3.75L9 0.75V3C7.4087 3 5.88258 3.63214 4.75736 4.75736C3.63214 5.88258 3 7.4087 3 9C3 10.1775 3.345 11.2725 3.93 12.195L5.025 11.1C4.6875 10.4775 4.5 9.75 4.5 9C4.5 7.80653 4.97411 6.66193 5.81802 5.81802C6.66193 4.97411 7.80652 4.5 9 4.5ZM14.07 5.805L12.975 6.9C13.305 7.53 13.5 8.25 13.5 9C13.5 10.1935 13.0259 11.3381 12.182 12.182C11.3381 13.0259 10.1935 13.5 9 13.5V11.25L6 14.25L9 17.25V15C10.5913 15 12.1174 14.3679 13.2426 13.2426C14.3679 12.1174 15 10.5913 15 9C15 7.8225 14.655 6.7275 14.07 5.805Z"
                          fill="currentColor"
                        >
                        </path>
                      </svg>
                    </span>
                    View History
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="mb-10 rounded-xl border border-stroke bg-bg-color p-[18px]">
              <div class="relative mb-5 overflow-hidden rounded-lg">
                <img src="/images/picks/image-06.svg" alt="auctions" class="w-full" />
                <button class="absolute right-4 top-4 inline-flex items-center rounded-md bg-white px-2 py-1">
                  <svg
                    width="14"
                    height="14"
                    viewBox="0 0 14 14"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M6.99999 11.8709L6.15416 11.1009C3.14999 8.37675 1.16666 6.57425 1.16666 4.37508C1.16666 2.57258 2.57832 1.16675 4.37499 1.16675C5.38999 1.16675 6.36416 1.63925 6.99999 2.38008C7.63582 1.63925 8.60999 1.16675 9.62499 1.16675C11.4217 1.16675 12.8333 2.57258 12.8333 4.37508C12.8333 6.57425 10.85 8.37675 7.84582 11.1009L6.99999 11.8709Z"
                      fill="#F85486"
                    >
                    </path>
                  </svg>
                   <span class="pl-1 text-xs font-semibold text-black"> 4.6K </span>
                </button>
              </div>

              <div>
                <h3>
                  <a
                    href="javascript:void(0)"
                    class="mb-3 inline-block text-lg font-semibold text-white hover:text-primary"
                  >
                    3d abstract illustration
                  </a>
                </h3>

                <div class="mb-6 flex items-center justify-between">
                  <div class="w-full">
                    <div class="flex items-center">
                      <div class="mr-2 h-8 w-full max-w-[32px] rounded-md">
                        <img
                          src="/images/picks/creator-06.png"
                          alt="creator"
                          class="h-full w-full object-cover object-center"
                        />
                      </div>

                      <div class="w-full">
                        <h4 class="text-xs font-semibold text-white">
                          @Marko...
                          <span class="block text-xs font-medium text-body-color"> creator </span>
                        </h4>
                      </div>
                    </div>
                  </div>

                  <div class="w-full">
                    <h5 class="text-right text-xs font-semibold text-white">
                      4.55 ETH
                      <span class="block text-xs font-medium text-body-color"> Current Bit </span>
                    </h5>
                  </div>
                </div>

                <div class="flex items-center justify-between border-t-2 border-stroke pt-5">
                  <a
                    href="javascript:void(0)"
                    class="flex items-center justify-center rounded-md bg-primary py-3 px-4 text-sm font-semibold text-white transition-all hover:bg-primary/90 sm:px-5"
                  >
                    Place Bid
                  </a>

                  <a
                    href="javascript:void(0)"
                    class="flex items-center justify-center rounded-md py-3 px-4 text-sm font-semibold text-white hover:text-primary sm:px-5"
                  >
                    <span class="pr-1">
                      <svg
                        width="18"
                        height="18"
                        viewBox="0 0 18 18"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M9 4.5V6.75L12 3.75L9 0.75V3C7.4087 3 5.88258 3.63214 4.75736 4.75736C3.63214 5.88258 3 7.4087 3 9C3 10.1775 3.345 11.2725 3.93 12.195L5.025 11.1C4.6875 10.4775 4.5 9.75 4.5 9C4.5 7.80653 4.97411 6.66193 5.81802 5.81802C6.66193 4.97411 7.80652 4.5 9 4.5ZM14.07 5.805L12.975 6.9C13.305 7.53 13.5 8.25 13.5 9C13.5 10.1935 13.0259 11.3381 12.182 12.182C11.3381 13.0259 10.1935 13.5 9 13.5V11.25L6 14.25L9 17.25V15C10.5913 15 12.1174 14.3679 13.2426 13.2426C14.3679 12.1174 15 10.5913 15 9C15 7.8225 14.655 6.7275 14.07 5.805Z"
                          fill="currentColor"
                        >
                        </path>
                      </svg>
                    </span>
                    View History
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="mb-10 rounded-xl border border-stroke bg-bg-color p-[18px]">
              <div class="relative mb-5 overflow-hidden rounded-lg">
                <img src="/images/picks/image-07.svg" alt="auctions" class="w-full" />
                <button class="absolute right-4 top-4 inline-flex items-center rounded-md bg-white px-2 py-1">
                  <svg
                    width="14"
                    height="14"
                    viewBox="0 0 14 14"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M6.99999 11.8709L6.15416 11.1009C3.14999 8.37675 1.16666 6.57425 1.16666 4.37508C1.16666 2.57258 2.57832 1.16675 4.37499 1.16675C5.38999 1.16675 6.36416 1.63925 6.99999 2.38008C7.63582 1.63925 8.60999 1.16675 9.62499 1.16675C11.4217 1.16675 12.8333 2.57258 12.8333 4.37508C12.8333 6.57425 10.85 8.37675 7.84582 11.1009L6.99999 11.8709Z"
                      fill="#F85486"
                    >
                    </path>
                  </svg>
                   <span class="pl-1 text-xs font-semibold text-black"> 4.6K </span>
                </button>
              </div>

              <div>
                <h3>
                  <a
                    href="javascript:void(0)"
                    class="mb-3 inline-block text-lg font-semibold text-white hover:text-primary"
                  >
                    3d abstract illustration
                  </a>
                </h3>

                <div class="mb-6 flex items-center justify-between">
                  <div class="w-full">
                    <div class="flex items-center">
                      <div class="mr-2 h-8 w-full max-w-[32px] rounded-md">
                        <img
                          src="/images/picks/creator-07.png"
                          alt="creator"
                          class="h-full w-full object-cover object-center"
                        />
                      </div>

                      <div class="w-full">
                        <h4 class="text-xs font-semibold text-white">
                          @Andrio_Hev...
                          <span class="block text-xs font-medium text-body-color"> creator </span>
                        </h4>
                      </div>
                    </div>
                  </div>

                  <div class="w-full">
                    <h5 class="text-right text-xs font-semibold text-white">
                      0.89 ETH
                      <span class="block text-xs font-medium text-body-color"> Current Bit </span>
                    </h5>
                  </div>
                </div>

                <div class="flex items-center justify-between border-t-2 border-stroke pt-5">
                  <a
                    href="javascript:void(0)"
                    class="flex items-center justify-center rounded-md bg-primary py-3 px-4 text-sm font-semibold text-white transition-all hover:bg-primary/90 sm:px-5"
                  >
                    Place Bid
                  </a>

                  <a
                    href="javascript:void(0)"
                    class="flex items-center justify-center rounded-md py-3 px-4 text-sm font-semibold text-white hover:text-primary sm:px-5"
                  >
                    <span class="pr-1">
                      <svg
                        width="18"
                        height="18"
                        viewBox="0 0 18 18"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M9 4.5V6.75L12 3.75L9 0.75V3C7.4087 3 5.88258 3.63214 4.75736 4.75736C3.63214 5.88258 3 7.4087 3 9C3 10.1775 3.345 11.2725 3.93 12.195L5.025 11.1C4.6875 10.4775 4.5 9.75 4.5 9C4.5 7.80653 4.97411 6.66193 5.81802 5.81802C6.66193 4.97411 7.80652 4.5 9 4.5ZM14.07 5.805L12.975 6.9C13.305 7.53 13.5 8.25 13.5 9C13.5 10.1935 13.0259 11.3381 12.182 12.182C11.3381 13.0259 10.1935 13.5 9 13.5V11.25L6 14.25L9 17.25V15C10.5913 15 12.1174 14.3679 13.2426 13.2426C14.3679 12.1174 15 10.5913 15 9C15 7.8225 14.655 6.7275 14.07 5.805Z"
                          fill="currentColor"
                        >
                        </path>
                      </svg>
                    </span>
                    View History
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="mb-10 rounded-xl border border-stroke bg-bg-color p-[18px]">
              <div class="relative mb-5 overflow-hidden rounded-lg">
                <img src="/images/picks/image-08.svg" alt="auctions" class="w-full" />
                <button class="absolute right-4 top-4 inline-flex items-center rounded-md bg-white px-2 py-1">
                  <svg
                    width="14"
                    height="14"
                    viewBox="0 0 14 14"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M6.99999 11.8709L6.15416 11.1009C3.14999 8.37675 1.16666 6.57425 1.16666 4.37508C1.16666 2.57258 2.57832 1.16675 4.37499 1.16675C5.38999 1.16675 6.36416 1.63925 6.99999 2.38008C7.63582 1.63925 8.60999 1.16675 9.62499 1.16675C11.4217 1.16675 12.8333 2.57258 12.8333 4.37508C12.8333 6.57425 10.85 8.37675 7.84582 11.1009L6.99999 11.8709Z"
                      fill="#F85486"
                    >
                    </path>
                  </svg>
                   <span class="pl-1 text-xs font-semibold text-black"> 4.6K </span>
                </button>
              </div>

              <div>
                <h3>
                  <a
                    href="javascript:void(0)"
                    class="mb-3 inline-block text-lg font-semibold text-white hover:text-primary"
                  >
                    3d abstract illustration
                  </a>
                </h3>

                <div class="mb-6 flex items-center justify-between">
                  <div class="w-full">
                    <div class="flex items-center">
                      <div class="mr-2 h-8 w-full max-w-[32px] rounded-md">
                        <img
                          src="/images/picks/creator-08.png"
                          alt="creator"
                          class="h-full w-full object-cover object-center"
                        />
                      </div>

                      <div class="w-full">
                        <h4 class="text-xs font-semibold text-white">
                          @Mariya_Hie...
                          <span class="block text-xs font-medium text-body-color"> creator </span>
                        </h4>
                      </div>
                    </div>
                  </div>

                  <div class="w-full">
                    <h5 class="text-right text-xs font-semibold text-white">
                      1.75 ETH
                      <span class="block text-xs font-medium text-body-color"> Current Bit </span>
                    </h5>
                  </div>
                </div>

                <div class="flex items-center justify-between border-t-2 border-stroke pt-5">
                  <a
                    href="javascript:void(0)"
                    class="flex items-center justify-center rounded-md bg-primary py-3 px-4 text-sm font-semibold text-white transition-all hover:bg-primary/90 sm:px-5"
                  >
                    Place Bid
                  </a>

                  <a
                    href="javascript:void(0)"
                    class="flex items-center justify-center rounded-md py-3 px-4 text-sm font-semibold text-white hover:text-primary sm:px-5"
                  >
                    <span class="pr-1">
                      <svg
                        width="18"
                        height="18"
                        viewBox="0 0 18 18"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M9 4.5V6.75L12 3.75L9 0.75V3C7.4087 3 5.88258 3.63214 4.75736 4.75736C3.63214 5.88258 3 7.4087 3 9C3 10.1775 3.345 11.2725 3.93 12.195L5.025 11.1C4.6875 10.4775 4.5 9.75 4.5 9C4.5 7.80653 4.97411 6.66193 5.81802 5.81802C6.66193 4.97411 7.80652 4.5 9 4.5ZM14.07 5.805L12.975 6.9C13.305 7.53 13.5 8.25 13.5 9C13.5 10.1935 13.0259 11.3381 12.182 12.182C11.3381 13.0259 10.1935 13.5 9 13.5V11.25L6 14.25L9 17.25V15C10.5913 15 12.1174 14.3679 13.2426 13.2426C14.3679 12.1174 15 10.5913 15 9C15 7.8225 14.655 6.7275 14.07 5.805Z"
                          fill="currentColor"
                        >
                        </path>
                      </svg>
                    </span>
                    View History
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="w-full px-4">
            <div class="pt-8 text-center">
              <a
                href="javascript:void(0)"
                class="inline-flex items-center justify-center rounded-md border-2 border-white py-3 px-7 text-base font-semibold text-white transition-all hover:border-primary hover:bg-primary"
              >
                Load More...
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ==== Today's Picks Section End ==== -->

    <!-- ==== Features Section Start ==== -->
    <section id="features" class="pt-[90px]">
      <div class="container">
        <div class="mx-auto mb-14 max-w-[650px] text-center">
          <h2 class="mb-4 text-4xl font-bold leading-tight text-white sm:text-[42px]">
            Core Features
          </h2>

          <p class="text-lg font-medium text-body-color">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam a lacinia dolor, in pretium nunc. Morbi mollis arcu eget.
          </p>
        </div>

        <div class="-mx-4 flex flex-wrap">
          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="group mb-10 rounded-xl border border-stroke bg-bg-color p-7 transition-all hover:border-white hover:bg-white">
              <div class="mb-5 flex h-[72px] w-[72px] items-center justify-center rounded-full bg-[#FFF0E9]">
                <svg
                  width="34"
                  height="34"
                  viewBox="0 0 34 34"
                  fill="none"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                    d="M29.75 25.5V26.9167C29.75 27.6681 29.4515 28.3888 28.9201 28.9201C28.3888 29.4515 27.6681 29.75 26.9167 29.75H7.08333C5.51083 29.75 4.25 28.475 4.25 26.9167V7.08333C4.25 6.33189 4.54851 5.61122 5.07986 5.07986C5.61122 4.54851 6.33189 4.25 7.08333 4.25H26.9167C27.6681 4.25 28.3888 4.54851 28.9201 5.07986C29.4515 5.61122 29.75 6.33189 29.75 7.08333V8.5H17C15.4275 8.5 14.1667 9.775 14.1667 11.3333V22.6667C14.1667 23.4181 14.4652 24.1388 14.9965 24.6701C15.5279 25.2015 16.2486 25.5 17 25.5H29.75ZM17 22.6667H31.1667V11.3333H17V22.6667ZM22.6667 19.125C22.1031 19.125 21.5626 18.9011 21.1641 18.5026C20.7656 18.1041 20.5417 17.5636 20.5417 17C20.5417 16.4364 20.7656 15.8959 21.1641 15.4974C21.5626 15.0989 22.1031 14.875 22.6667 14.875C23.2303 14.875 23.7708 15.0989 24.1693 15.4974C24.5678 15.8959 24.7917 16.4364 24.7917 17C24.7917 17.5636 24.5678 18.1041 24.1693 18.5026C23.7708 18.9011 23.2303 19.125 22.6667 19.125Z"
                    fill="#FF766A"
                  >
                  </path>
                </svg>
              </div>

              <h3 class="mb-2 text-xl font-bold text-white transition group-hover:text-black">
                Set Up Your Wallet
              </h3>

              <p class="text-base font-medium text-body-color">
                Lorem ipsum dolor sit amet consectetur smit.
              </p>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="group mb-10 rounded-xl border border-stroke bg-bg-color p-7 transition-all hover:border-white hover:bg-white">
              <div class="mb-5 flex h-[72px] w-[72px] items-center justify-center rounded-full bg-[#FFF6DD]">
                <svg
                  width="34"
                  height="34"
                  viewBox="0 0 34 34"
                  fill="none"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                    d="M4.25 15.5833H15.5833V4.25H4.25V15.5833ZM4.25 29.75H15.5833V18.4167H4.25V29.75ZM18.4167 29.75H29.75V18.4167H18.4167V29.75ZM18.4167 4.25V15.5833H29.75V4.25"
                    fill="#F5B70A"
                  >
                  </path>
                </svg>
              </div>

              <h3 class="mb-2 text-xl font-bold text-white transition group-hover:text-black">
                Make Your Collection
              </h3>

              <p class="text-base font-medium text-body-color">
                Lorem ipsum dolor sit amet consectetur smit.
              </p>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="group mb-10 rounded-xl border border-stroke bg-bg-color p-7 transition-all hover:border-white hover:bg-white">
              <div class="mb-5 flex h-[72px] w-[72px] items-center justify-center rounded-full bg-[#EDF8F4]">
                <svg
                  width="34"
                  height="34"
                  viewBox="0 0 34 34"
                  fill="none"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                    d="M12.0417 19.125L15.5833 23.375L20.5417 17L26.9167 25.5H7.08333L12.0417 19.125ZM29.75 26.9167V7.08333C29.75 5.51083 28.475 4.25 26.9167 4.25H7.08333C6.33189 4.25 5.61122 4.54851 5.07986 5.07986C4.54851 5.61122 4.25 6.33189 4.25 7.08333V26.9167C4.25 27.6681 4.54851 28.3888 5.07986 28.9201C5.61122 29.4515 6.33189 29.75 7.08333 29.75H26.9167C27.6681 29.75 28.3888 29.4515 28.9201 28.9201C29.4515 28.3888 29.75 27.6681 29.75 26.9167Z"
                    fill="#06DE90"
                  >
                  </path>
                </svg>
              </div>

              <h3 class="mb-2 text-xl font-bold text-white transition group-hover:text-black">
                Add Your NFTs
              </h3>

              <p class="text-base font-medium text-body-color">
                Lorem ipsum dolor sit amet consectetur smit.
              </p>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="group mb-10 rounded-xl border border-stroke bg-bg-color p-7 transition-all hover:border-white hover:bg-white">
              <div class="mb-5 flex h-[72px] w-[72px] items-center justify-center rounded-full bg-[#E1DDFF]">
                <svg
                  width="34"
                  height="34"
                  viewBox="0 0 34 34"
                  fill="none"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                    d="M7.79168 9.91671C7.22809 9.91671 6.68759 9.69282 6.28907 9.29431C5.89056 8.89579 5.66668 8.35529 5.66668 7.79171C5.66668 7.22812 5.89056 6.68762 6.28907 6.28911C6.68759 5.89059 7.22809 5.66671 7.79168 5.66671C8.35526 5.66671 8.89576 5.89059 9.29428 6.28911C9.69279 6.68762 9.91668 7.22812 9.91668 7.79171C9.91668 8.35529 9.69279 8.89579 9.29428 9.29431C8.89576 9.69282 8.35526 9.91671 7.79168 9.91671ZM30.3308 16.405L17.5808 3.65504C17.0708 3.14504 16.3625 2.83337 15.5833 2.83337H5.66668C4.09418 2.83337 2.83334 4.09421 2.83334 5.66671V15.5834C2.83334 16.3625 3.14501 17.0709 3.66918 17.5809L16.405 30.3309C16.9292 30.8409 17.6375 31.1667 18.4167 31.1667C19.1958 31.1667 19.9042 30.8409 20.4142 30.3309L30.3308 20.4142C30.855 19.9042 31.1667 19.1959 31.1667 18.4167C31.1667 17.6234 30.8408 16.915 30.3308 16.405Z"
                    fill="#5142FC"
                  >
                  </path>
                </svg>
              </div>

              <h3 class="mb-2 text-xl font-bold text-white transition group-hover:text-black">
                List Them For Sale
              </h3>

              <p class="text-base font-medium text-body-color">
                Lorem ipsum dolor sit amet consectetur smit.
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ==== Features Section End ==== -->

    <!-- ==== Collection Section Start ==== -->
    <section class="pt-8 pb-[60px]">
      <div class="container">
        <div class="mb-12 border-b border-white/10">
          <div class="justify-between sm:flex">
            <h2 class="mb-4 text-3xl font-bold leading-none text-white">Popular Collection</h2>

            <a
              href="javascript:void(0)"
              class="mb-5 inline-flex items-center justify-center rounded-md bg-primary py-[10px] px-6 text-base font-semibold text-white transition-all hover:bg-primary/90"
            >
              Explore More
            </a>
          </div>
        </div>

        <div class="-mx-4 flex flex-wrap">
          <div class="w-full px-4 lg:w-1/2">
            <div class="mb-10 rounded-xl border border-stroke bg-bg-color p-5 md:p-7 lg:p-5 xl:p-7">
              <div class="-mx-3 flex flex-wrap">
                <div class="w-2/3 px-3">
                  <div class="mb-6 w-full">
                    <img src="/images/collections/image-01.svg" alt="collection" class="w-full" />
                  </div>
                </div>

                <div class="w-1/3 px-3">
                  <div class="mb-6 w-full">
                    <img src="/images/collections/image-02.svg" alt="collection" class="w-full" />
                  </div>

                  <div class="mb-6 w-full">
                    <img src="/images/collections/image-03.svg" alt="collection" class="w-full" />
                  </div>
                </div>
              </div>

              <div class="mb-3 flex items-center justify-between">
                <h3>
                  <a
                    href="javascript:void(0)"
                    class="text-lg font-bold text-white sm:text-xl md:text-2xl lg:text-xl xl:text-2xl"
                  >
                    Creative 3d illustration
                  </a>
                </h3>

                <button class="inline-flex items-center rounded-md bg-white px-2 py-1">
                  <svg
                    width="14"
                    height="14"
                    viewBox="0 0 14 14"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M6.99999 11.8709L6.15416 11.1009C3.14999 8.37675 1.16666 6.57425 1.16666 4.37508C1.16666 2.57258 2.57832 1.16675 4.37499 1.16675C5.38999 1.16675 6.36416 1.63925 6.99999 2.38008C7.63582 1.63925 8.60999 1.16675 9.62499 1.16675C11.4217 1.16675 12.8333 2.57258 12.8333 4.37508C12.8333 6.57425 10.85 8.37675 7.84582 11.1009L6.99999 11.8709Z"
                      fill="#F85486"
                    >
                    </path>
                  </svg>
                   <span class="pl-1 text-xs font-semibold text-black"> 1.6K </span>
                </button>
              </div>

              <div class="flex items-center">
                <div class="mr-3 h-[46px] w-full max-w-[46px] overflow-hidden rounded-md">
                  <img
                    src="/images/collections/creator-01.jpg"
                    alt=""
                    class="h-full w-full object-cover object-center"
                  />
                </div>

                <div class="w-full">
                  <h4 class="text-base font-semibold text-white">
                    @Lathium_Lui...
                    <span class="block text-sm font-medium text-body-color"> Creator </span>
                  </h4>
                </div>
              </div>
            </div>
          </div>

          <div class="w-full px-4 lg:w-1/2">
            <div class="mb-10 rounded-xl border border-stroke bg-bg-color p-5 md:p-7 lg:p-5 xl:p-7">
              <div class="-mx-3 flex flex-wrap">
                <div class="w-1/3 px-3">
                  <div class="mb-6 w-full">
                    <img src="/images/collections/image-04.svg" alt="collection" class="w-full" />
                  </div>
                </div>

                <div class="w-2/3 px-3">
                  <div class="-mx-3 flex flex-wrap">
                    <div class="w-1/2 px-3">
                      <div class="mb-6 w-full">
                        <img src="/images/collections/image-05.svg" alt="collection" class="w-full" />
                      </div>
                    </div>

                    <div class="w-1/2 px-3">
                      <div class="mb-6 w-full">
                        <img src="/images/collections/image-06.svg" alt="collection" class="w-full" />
                      </div>
                    </div>

                    <div class="w-full px-3">
                      <div class="mb-6 w-full">
                        <img src="/images/collections/image-07.svg" alt="collection" class="w-full" />
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="mb-3 flex items-center justify-between">
                <h3>
                  <a
                    href="javascript:void(0)"
                    class="text-lg font-bold text-white sm:text-xl md:text-2xl lg:text-xl xl:text-2xl"
                  >
                    Modern illustration
                  </a>
                </h3>

                <button class="inline-flex items-center rounded-md bg-white px-2 py-1">
                  <svg
                    width="14"
                    height="14"
                    viewBox="0 0 14 14"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M6.99999 11.8709L6.15416 11.1009C3.14999 8.37675 1.16666 6.57425 1.16666 4.37508C1.16666 2.57258 2.57832 1.16675 4.37499 1.16675C5.38999 1.16675 6.36416 1.63925 6.99999 2.38008C7.63582 1.63925 8.60999 1.16675 9.62499 1.16675C11.4217 1.16675 12.8333 2.57258 12.8333 4.37508C12.8333 6.57425 10.85 8.37675 7.84582 11.1009L6.99999 11.8709Z"
                      fill="#F85486"
                    >
                    </path>
                  </svg>
                   <span class="pl-1 text-xs font-semibold text-black"> 3.6K </span>
                </button>
              </div>

              <div class="flex items-center">
                <div class="mr-3 h-[46px] w-full max-w-[46px] overflow-hidden rounded-md">
                  <img
                    src="/images/collections/creator-02.jpg"
                    alt=""
                    class="h-full w-full object-cover object-center"
                  />
                </div>

                <div class="w-full">
                  <h4 class="text-base font-semibold text-white">
                    @Andrio_Hev...
                    <span class="block text-sm font-medium text-body-color"> Creator </span>
                  </h4>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    """
  end
end
