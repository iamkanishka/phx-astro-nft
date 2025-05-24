defmodule PhxAstroNftWeb.Components.Artist.Card do
  use PhxAstroNftWeb, :live_component

  def render(assigns) do
    ~H"""
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
    """
  end
end
