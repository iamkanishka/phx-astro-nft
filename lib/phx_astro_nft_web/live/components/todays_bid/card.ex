defmodule PhxAstroNftWeb.Components.TodaysBid.Card do
  use PhxAstroNftWeb, :live_component

  def render(assigns) do
    ~H"""

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
    """
  end
end
