defmodule PhxAstroNftWeb.Components.Home.AuctionsSection do
  use PhxAstroNftWeb, :live_component

  def render(assigns) do
    ~H"""
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

        <div class=" flex flex-wrap">
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
    """
  end
end
