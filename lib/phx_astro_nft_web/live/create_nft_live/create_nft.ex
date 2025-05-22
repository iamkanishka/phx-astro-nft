defmodule PhxAstroNftWeb.CreateNftLive.CreateNft do
  use PhxAstroNftWeb, :live_view


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

    <!-- ====== Contact Section Start -->
    <section class="pb-24 flex items-center justify-center" >
      <div class="container">
        <div class="relative z-10 overflow-hidden rounded-xl bg-bg-color">
          <form class="p-8 sm:p-10">
            <div class=" flex flex-wrap ">
              <div class="w-full px-5 lg:w-5/12 xl:px-8">
                <div class="mb-12 lg:mb-0">
                  <div class="mb-8">
                    <input type="file" name="file" id="file" class="sr-only">
                    <label for="file" class="relative flex h-[480px] min-h-[200px] items-center justify-center rounded-lg border border-dashed border-[#A1A0AE] bg-[#353444] p-12 text-center">
                      <div>
                        <div class="mb-4 text-center">
                          <svg width="80" height="80" viewBox="0 0 80 80" class="mx-auto">
                            <path d="M28.3333 45L36.6667 55L48.3333 40L63.3333 60H16.6667L28.3333 45ZM70 63.3333V16.6667C70 12.9667 67 10 63.3333 10H16.6667C14.8986 10 13.2029 10.7024 11.9526 11.9526C10.7024 13.2029 10 14.8986 10 16.6667V63.3333C10 65.1014 10.7024 66.7971 11.9526 68.0474C13.2029 69.2976 14.8986 70 16.6667 70H63.3333C65.1014 70 66.7971 69.2976 68.0474 68.0474C69.2976 66.7971 70 65.1014 70 63.3333Z" fill="#4D4C5A"></path>
                          </svg>
                        </div>
                        <span class="mb-2 block text-xl font-semibold text-white"> Drop files here </span>
                        <span class="mb-3 block text-base font-medium text-body-color"> PNG, JPG, GIF, WEBP or MP4. Max 200mb. </span>
                        <span class="mb-3 block text-base font-medium text-body-color"> Or choose a file </span>
                        <span class="inline-flex rounded-sm bg-white py-2 px-5 text-base font-semibold text-black"> Browse </span>
                      </div>
                    </label>
                  </div>

                  <div class="mb-5 rounded-md bg-[#4E4C64] py-4 px-8">
                    <div class="flex items-center justify-between">
                      <span class="truncate pr-3 text-base font-medium text-white"> banner-design.png </span>
                      <button class="text-white">
                        <svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <path fill-rule="evenodd" clip-rule="evenodd" d="M0.279337 0.279338C0.651787 -0.0931121 1.25565 -0.0931121 1.6281 0.279338L9.72066 8.3719C10.0931 8.74435 10.0931 9.34821 9.72066 9.72066C9.34821 10.0931 8.74435 10.0931 8.3719 9.72066L0.279337 1.6281C-0.0931125 1.25565 -0.0931125 0.651788 0.279337 0.279338Z" fill="currentColor"></path>
                          <path fill-rule="evenodd" clip-rule="evenodd" d="M0.279337 9.72066C-0.0931125 9.34821 -0.0931125 8.74435 0.279337 8.3719L8.3719 0.279338C8.74435 -0.0931127 9.34821 -0.0931123 9.72066 0.279338C10.0931 0.651787 10.0931 1.25565 9.72066 1.6281L1.6281 9.72066C1.25565 10.0931 0.651787 10.0931 0.279337 9.72066Z" fill="currentColor"></path>
                        </svg>
                      </button>
                    </div>
                  </div>

                  <div class="rounded-md bg-[#4E4C64] py-4 px-8">
                    <div class="flex items-center justify-between">
                      <span class="truncate pr-3 text-base font-medium text-white"> banner-design.png </span>
                      <button class="text-white">
                        <svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <path fill-rule="evenodd" clip-rule="evenodd" d="M0.279337 0.279338C0.651787 -0.0931121 1.25565 -0.0931121 1.6281 0.279338L9.72066 8.3719C10.0931 8.74435 10.0931 9.34821 9.72066 9.72066C9.34821 10.0931 8.74435 10.0931 8.3719 9.72066L0.279337 1.6281C-0.0931125 1.25565 -0.0931125 0.651788 0.279337 0.279338Z" fill="currentColor"></path>
                          <path fill-rule="evenodd" clip-rule="evenodd" d="M0.279337 9.72066C-0.0931125 9.34821 -0.0931125 8.74435 0.279337 8.3719L8.3719 0.279338C8.74435 -0.0931127 9.34821 -0.0931123 9.72066 0.279338C10.0931 0.651787 10.0931 1.25565 9.72066 1.6281L1.6281 9.72066C1.25565 10.0931 0.651787 10.0931 0.279337 9.72066Z" fill="currentColor"></path>
                        </svg>
                      </button>
                    </div>
                    <div class="w-full rounded-lg bg-[#E2E5EF] relative mt-5 h-[6px]">
                      <div class="w-[75%] rounded-lg bg-primary absolute left-0 right-0 h-full"></div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="w-full px-5 lg:w-7/12 xl:px-8">
                <div>
                  <div class="mb-5">
                    <label for="title" class="mb-2 block text-base font-medium text-white"> Title </label>
                    <input type="text" name="title" id="title" placeholder="Enter item title" class="w-full rounded-md border border-stroke bg-[#353444] py-3 px-6 text-base font-medium text-body-color outline-hidden transition-all focus:bg-[#454457] focus:shadow-input">
                  </div>
                  <div class="mb-5">
                    <label for="description" class="mb-2 block text-base font-medium text-white"> Description (optional) </label>
                    <textarea rows="2" name="description" id="description" placeholder="Type item description" class="w-full rounded-md border border-stroke bg-[#353444] py-3 px-6 text-base font-medium text-body-color outline-hidden transition-all focus:bg-[#454457] focus:shadow-input"></textarea>
                  </div>
                  <div class="mb-5">
                    <label for="price" class="mb-2 block text-base font-medium text-white"> Price </label>
                    <input type="text" name="price" id="price" placeholder="10 ETH" class="w-full rounded-md border border-stroke bg-[#353444] py-3 px-6 text-base font-medium text-body-color outline-hidden transition-all focus:bg-[#454457] focus:shadow-input">
                  </div>

                  <div class=" flex flex-wrap">
                    <div class="w-full px-3 md:w-1/2">
                      <div class="mb-5">
                        <label for="royalties" class="mb-2 block text-base font-medium text-white"> Royalties </label>
                        <input type="text" name="royalties" id="royalties" placeholder="5%" class="w-full rounded-md border border-stroke bg-[#353444] py-3 px-6 text-base font-medium text-body-color outline-hidden transition-all focus:bg-[#454457] focus:shadow-input">
                      </div>
                    </div>
                    <div class="w-full px-3 md:w-1/2">
                      <div class="mb-5">
                        <label for="size" class="mb-2 block text-base font-medium text-white"> Size </label>
                        <input type="text" name="size" id="size" placeholder="e.g. 'size'" class="w-full rounded-md border border-stroke bg-[#353444] py-3 px-6 text-base font-medium text-body-color outline-hidden transition-all focus:bg-[#454457] focus:shadow-input">
                      </div>
                    </div>
                  </div>

                  <div class="mb-5 pt-2">
                    <p class="text-xl font-bold text-white">
                      Time Auctions
                      <span class="text-body-color"> (optional) </span>
                    </p>
                  </div>

                  <div class=" flex flex-wrap">
                    <div class="w-full px-3 md:w-1/2">
                      <div class="mb-5">
                        <label for="startDate" class="mb-2 block text-base font-medium text-white"> Starting date </label>
                        <input type="date" name="startDate" id="startDate" class="w-full rounded-md border border-stroke bg-[#353444] py-3 px-6 text-base font-medium text-body-color outline-hidden transition-all focus:bg-[#454457] focus:shadow-input">
                      </div>
                    </div>
                    <div class="w-full px-3 md:w-1/2">
                      <div class="mb-5">
                        <label for="expireDate" class="mb-2 block text-base font-medium text-white"> Expiration date </label>
                        <input type="time" name="expireDate" id="expireDate" class="w-full rounded-md border border-stroke bg-[#353444] py-3 px-6 text-base font-medium text-body-color outline-hidden transition-all focus:bg-[#454457] focus:shadow-input">
                      </div>
                    </div>
                  </div>

                  <div class="pt-2">
                    <button class="hover:shadow-form w-full rounded-md bg-primary py-3 px-8 text-center text-base font-semibold text-white outline-hidden">Create Item</button>
                  </div>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </section>
    <!-- ====== Contact Section End -->

    """
  end

end
