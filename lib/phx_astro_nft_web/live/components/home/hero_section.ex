defmodule PhxAstroNftWeb.Components.Home.HeroSection do

  use PhxAstroNftWeb, :live_component

  def render(assigns) do
    ~H"""
     <section id="home" class="relative z-10 overflow-hidden  pt-[150px] pb-24">
      <div class="flex justify-center items-center">
        <div class="container">
          <div class=" flex flex-wrap items-center">
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
      </div>

      <div></div>
    </section>
    """
  end


end
