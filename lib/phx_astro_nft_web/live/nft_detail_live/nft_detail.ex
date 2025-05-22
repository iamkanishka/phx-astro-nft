defmodule PhxAstroNftWeb.NftDetailLive.NftDetail do
  use PhxAstroNftWeb, :live_view

  def render(assigns) do
    ~H"""
    <!-- ==== Breadcrumb Section Start ==== -->
    <section class="pt-[150px] pb-24 flex justify-center items-center">
      <div class="container">
        <div class="rounded-lg border-2 border-stroke bg-bg-color py-5 px-8">
          <ul class="flex items-center">
            <li class="flex items-center text-base font-medium text-white">
              <a href="javascript:void(0)" class="text-white hover:text-primary"> Home </a>
              <span class="px-3"> / </span>
            </li>

            <li class="flex items-center text-base font-medium text-white">Explore Items</li>
          </ul>
        </div>
      </div>
    </section>
    <!-- ==== Breadcrumb Section End ==== -->

    <!-- ==== Today's Picks Section Start ==== -->
    <section class="pt-8 pb-24 flex justify-center items-center">
      <div class="container">
        <div class=" flex flex-wrap">
          <div class="w-full px-4 lg:w-1/2">
            <div class="mb-12 flex w-full items-center justify-center rounded-xl border border-stroke bg-bg-color py-8 sm:py-14 md:py-24 lg:mb-0 lg:py-16 xl:py-28">
              <img src="/images/item-details/image-01.png" alt="details image" />
            </div>
          </div>

          <div class="w-full px-4 lg:w-1/2">
            <div class="xl:pl-8">
              <div class="mb-9 justify-between sm:flex">
                <h2 class="mb-3 text-3xl font-bold text-white sm:mb-0 sm:text-[38px] lg:text-3xl xl:text-[38px]">
                  3d locker illustration
                </h2>

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
                   <span class="pl-1 text-xs font-semibold text-black"> 4.6K </span>
                </button>
              </div>

              <div class="mb-9 sm:flex">
                <div class="flex items-center border-body-color pr-0 pb-3 sm:border-r-2 sm:pr-8 sm:pb-0">
                  <div class="mr-2 h-11 w-full max-w-[44px] rounded-md">
                    <img
                      src="/images/picks/creator-01.png"
                      alt="creator"
                      class="h-full w-full object-cover object-center"
                    />
                  </div>

                  <div class="w-full">
                    <h3 class="text-base font-semibold text-white">
                      @Devid_Mill...
                      <span class="block text-base font-medium text-body-color"> Owned by </span>
                    </h3>
                  </div>
                </div>

                <div class="flex items-center sm:pl-8">
                  <div class="mr-2 h-11 w-full max-w-[44px] rounded-md">
                    <img
                      src="/images/picks/creator-01.png"
                      alt="creator"
                      class="h-full w-full object-cover object-center"
                    />
                  </div>

                  <div class="w-full">
                    <h3 class="text-base font-semibold text-white">
                      @Devid_Mill...
                      <span class="block text-base font-medium text-body-color"> Create by </span>
                    </h3>
                  </div>
                </div>
              </div>

              <p class="mb-9 text-base font-medium leading-relaxed text-body-color">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales mi felis, pretium tincidunt lorem varius ac. Curabitur mauris lacus, pretium vel neque nec, blandit pharetra nulla.
              </p>

              <div class="mb-6 flex flex-wrap items-center justify-between rounded-lg border border-stroke bg-bg-color">
                <div class="w-full sm:w-1/2">
                  <div class="space-y-2 border-stroke p-6 sm:border-r">
                    <p class="text-base font-semibold text-body-color">
                      Artist : <span class="text-white"> Devid Methio </span>
                    </p>

                    <p class="text-base font-semibold text-body-color">
                      Size : <span class="text-white"> 4000x4000 </span>
                    </p>

                    <p class="text-base font-semibold text-body-color">
                      Created On : <span class="text-white"> 04 April , 2021 </span>
                    </p>
                  </div>
                </div>

                <div class="w-full sm:w-1/2 sm:text-center">
                  <div class="space-y-3 p-6">
                    <p class="text-base font-semibold text-body-color">
                      Current Bid : <span class="text-white"> 4.89 ETH </span>
                    </p>

                    <p class="inline-flex items-center justify-center rounded-md bg-white/10 py-[10px] px-8 text-base font-semibold text-white">
                      05 : 15 : 07 : 45
                    </p>
                  </div>
                </div>
              </div>

              <div class="mb-8 overflow-hidden rounded-lg border border-stroke bg-bg-color">
                <div class="flex w-full flex-wrap items-center border-b border-stroke px-1 pb-4 pt-1">
                  <div class="px-[6px] pt-3">
                    <button class="rounded-md border border-stroke py-2 px-5 text-base font-semibold text-white hover:border-primary hover:bg-primary">
                      History
                    </button>
                  </div>

                  <div class="px-[6px] pt-3">
                    <button class="rounded-md border border-stroke py-2 px-5 text-base font-semibold text-white hover:border-primary hover:bg-primary">
                      Bids
                    </button>
                  </div>

                  <div class="px-[6px] pt-3">
                    <button class="rounded-md border border-stroke py-2 px-5 text-base font-semibold text-white hover:border-primary hover:bg-primary">
                      Details
                    </button>
                  </div>
                </div>

                <div class="py-2">
                  <div class="flex justify-between py-[10px] px-4 transition hover:bg-stroke">
                    <div class="flex items-center">
                      <div class="mr-2 h-10 w-full max-w-[40px] rounded-md">
                        <img
                          src="/images/picks/creator-01.png"
                          alt="creator"
                          class="h-full w-full object-cover object-center"
                        />
                      </div>

                      <div class="w-full">
                        <h4 class="text-sm font-semibold text-white">
                          @Devid_Mill...
                          <span class="block text-sm font-medium text-body-color"> 5 Hours ago </span>
                        </h4>
                      </div>
                    </div>

                    <div class="text-right">
                      <h5 class="text-sm font-semibold text-white">
                        4.75 ETH
                        <span class="block text-sm font-medium text-body-color"> = $12.246 </span>
                      </h5>
                    </div>
                  </div>

                  <div class="flex justify-between py-[10px] px-4 transition hover:bg-stroke">
                    <div class="flex items-center">
                      <div class="mr-2 h-10 w-full max-w-[40px] rounded-md">
                        <img
                          src="/images/picks/creator-01.png"
                          alt="creator"
                          class="h-full w-full object-cover object-center"
                        />
                      </div>

                      <div class="w-full">
                        <h4 class="text-sm font-semibold text-white">
                          @Devid_Mill...
                          <span class="block text-sm font-medium text-body-color"> 5 Hours ago </span>
                        </h4>
                      </div>
                    </div>

                    <div class="text-right">
                      <h5 class="text-sm font-semibold text-white">
                        4.75 ETH
                        <span class="block text-sm font-medium text-body-color"> = $12.246 </span>
                      </h5>
                    </div>
                  </div>

                  <div class="flex justify-between py-[10px] px-4 transition hover:bg-stroke">
                    <div class="flex items-center">
                      <div class="mr-2 h-10 w-full max-w-[40px] rounded-md">
                        <img
                          src="/images/picks/creator-01.png"
                          alt="creator"
                          class="h-full w-full object-cover object-center"
                        />
                      </div>

                      <div class="w-full">
                        <h4 class="text-sm font-semibold text-white">
                          @Devid_Mill...
                          <span class="block text-sm font-medium text-body-color"> 5 Hours ago </span>
                        </h4>
                      </div>
                    </div>

                    <div class="text-right">
                      <h5 class="text-sm font-semibold text-white">
                        4.75 ETH
                        <span class="block text-sm font-medium text-body-color"> = $12.246 </span>
                      </h5>
                    </div>
                  </div>
                </div>
              </div>

              <button class="w-full items-center justify-center rounded-md bg-primary p-[14px] text-base font-semibold text-white hover:bg-primary/90">
                Place Bid
              </button>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ==== Today's Picks Section End ==== -->

    """
  end
end
