defmodule PhxAstroNftWeb.ConnectWalletLive.ConnectWallet do
  use PhxAstroNftWeb, :live_view

  alias PhxAstroNftWeb.ConnectWalletLive.ConnectWallet

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, page_title: "Connect Wallet")}
  end

  @impl true
  def handle_params(_params, _url, socket) do
    {:noreply, socket}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <!-- ==== Breadcrumb Section Start ==== -->
    <section class="pt-[150px] pb-24 flex items-center justify-center">
      <div class="container">
        <div class="rounded-lg border-2 border-stroke bg-bg-color py-5 px-8">
          <ul class="flex items-center">
            <li class="flex items-center text-base font-medium text-white">
              <a href="javascript:void(0)" class="text-white hover:text-primary"> Home </a>
              <span class="px-3"> / </span>
            </li>

            <li class="flex items-center text-base font-medium text-white">Connect Wallet</li>
          </ul>
        </div>
      </div>
    </section>
    <!-- ==== Breadcrumb Section End ==== -->

    <!-- ==== Features Section Start ==== -->
    <section id="features" class="pb-[60px] flex items-center justify-center ">
      <div class="container ">
        <div class="mx-auto mb-14 max-w-[650px] text-center">
          <h2 class="mb-4 text-4xl font-bold leading-tight text-white sm:text-[42px]">
            Connect Your Wallet
          </h2>

          <p class="text-lg font-medium text-body-color">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam a lacinia dolor, in pretium nunc. Morbi mollis arcu eget.
          </p>
        </div>

        <div class=" flex flex-wrap">
          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="group mb-10 rounded-xl border border-stroke bg-bg-color p-7 transition-all hover:border-white hover:bg-white">
              <div class="mb-5 flex h-[72px] w-[72px] items-center justify-center rounded-full bg-[#EDEDF2]">
                <img src="/images/wallets/image-1.svg" alt="metamask" />
              </div>

              <h3 class="mb-2 text-xl font-bold text-white transition group-hover:text-black">
                Meta Mask
              </h3>

              <p class="text-base font-medium text-body-color">
                Lorem ipsum dolor sit amet consectetur smit.
              </p>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="group mb-10 rounded-xl border border-stroke bg-bg-color p-7 transition-all hover:border-white hover:bg-white">
              <div class="mb-5 flex h-[72px] w-[72px] items-center justify-center rounded-full bg-[#EDEDF2]">
                <img src="/images/wallets/image-2.svg" alt="bitski" />
              </div>

              <h3 class="mb-2 text-xl font-bold text-white transition group-hover:text-black">
                Bitski
              </h3>

              <p class="text-base font-medium text-body-color">
                Lorem ipsum dolor sit amet consectetur smit.
              </p>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="group mb-10 rounded-xl border border-stroke bg-bg-color p-7 transition-all hover:border-white hover:bg-white">
              <div class="mb-5 flex h-[72px] w-[72px] items-center justify-center rounded-full bg-[#EDEDF2]">
                <img src="/images/wallets/image-3.svg" alt="Fortmatic" />
              </div>

              <h3 class="mb-2 text-xl font-bold text-white transition group-hover:text-black">
                Fortmatic
              </h3>

              <p class="text-base font-medium text-body-color">
                Lorem ipsum dolor sit amet consectetur smit.
              </p>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="group mb-10 rounded-xl border border-stroke bg-bg-color p-7 transition-all hover:border-white hover:bg-white">
              <div class="mb-5 flex h-[72px] w-[72px] items-center justify-center rounded-full bg-[#EDEDF2]">
                <img src="/images/wallets/image-4.svg" alt="Wallet Connect" />
              </div>

              <h3 class="mb-2 text-xl font-bold text-white transition group-hover:text-black">
                Wallet Connect
              </h3>

              <p class="text-base font-medium text-body-color">
                Lorem ipsum dolor sit amet consectetur smit.
              </p>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="group mb-10 rounded-xl border border-stroke bg-bg-color p-7 transition-all hover:border-white hover:bg-white">
              <div class="mb-5 flex h-[72px] w-[72px] items-center justify-center rounded-full bg-[#EDEDF2]">
                <img src="/images/wallets/image-5.svg" alt="Coinbase Wallet" />
              </div>

              <h3 class="mb-2 text-xl font-bold text-white transition group-hover:text-black">
                Coinbase Wallet
              </h3>

              <p class="text-base font-medium text-body-color">
                Lorem ipsum dolor sit amet consectetur smit.
              </p>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="group mb-10 rounded-xl border border-stroke bg-bg-color p-7 transition-all hover:border-white hover:bg-white">
              <div class="mb-5 flex h-[72px] w-[72px] items-center justify-center rounded-full bg-[#EDEDF2]">
                <img src="..//images/wallets/image-6.svg" alt="Authereum" />
              </div>

              <h3 class="mb-2 text-xl font-bold text-white transition group-hover:text-black">
                Authereum
              </h3>

              <p class="text-base font-medium text-body-color">
                Lorem ipsum dolor sit amet consectetur smit.
              </p>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="group mb-10 rounded-xl border border-stroke bg-bg-color p-7 transition-all hover:border-white hover:bg-white">
              <div class="mb-5 flex h-[72px] w-[72px] items-center justify-center rounded-full bg-[#EDEDF2]">
                <img src="/images/wallets/image-7.svg" alt="Kaikas" />
              </div>

              <h3 class="mb-2 text-xl font-bold text-white transition group-hover:text-black">
                Kaikas
              </h3>

              <p class="text-base font-medium text-body-color">
                Lorem ipsum dolor sit amet consectetur smit.
              </p>
            </div>
          </div>

          <div class="w-full px-4 md:w-1/2 lg:w-1/3 2xl:w-1/4">
            <div class="group mb-10 rounded-xl border border-stroke bg-bg-color p-7 transition-all hover:border-white hover:bg-white">
              <div class="mb-5 flex h-[72px] w-[72px] items-center justify-center rounded-full bg-[#EDEDF2]">
                <img src="/images/wallets/image-8.svg" alt="Torus" />
              </div>

              <h3 class="mb-2 text-xl font-bold text-white transition group-hover:text-black">
                Torus
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

    """
  end
end
