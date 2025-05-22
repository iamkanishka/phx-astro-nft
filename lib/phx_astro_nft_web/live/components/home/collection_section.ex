defmodule PhxAstroNftWeb.Components.Home.CollectionSection do
  use PhxAstroNftWeb, :live_component

  def render(assigns) do
    ~H"""
    <section class="pt-8 pb-[60px] flex justify-center items-center">
      <div class="container">
        <div class="mb-12 border-b border-white/10">
          <div class="justify-between sm:flex">
            <h2 class="mb-4 text-3xl font-bold leading-none text-white">
              Popular Collection
            </h2>

            <a
              href="javascript:void(0)"
              class="mb-5 inline-flex items-center justify-center rounded-md bg-primary py-[10px] px-6 text-base font-semibold text-white transition-all hover:bg-primary/90"
            >
              Explore More
            </a>
          </div>
        </div>

        <div class="flex flex-wrap">
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
                    <span class="block text-sm font-medium text-body-color">
                      Creator
                    </span>
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
                    <span class="block text-sm font-medium text-body-color">
                      Creator
                    </span>
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
