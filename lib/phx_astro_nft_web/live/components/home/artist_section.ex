defmodule PhxAstroNftWeb.Components.Home.ArtistSection do
  use PhxAstroNftWeb, :live_component

  def render(assigns) do
    ~H"""

     <section class="pt-5">
      <div class="flex justify-center items-center">
        <div class="container">
          <div class="mb-12 border-b border-white/10">
            <div class=" flex">
              <div class="w-full px-4">
                <h2 class="mb-5 text-3xl font-bold text-white">Top Artists</h2>
              </div>
            </div>
          </div>

          <div class="relative">
            <div class="artists-slider flex flex-wrap">
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
      </div>
    </section>

    """
  end
end
