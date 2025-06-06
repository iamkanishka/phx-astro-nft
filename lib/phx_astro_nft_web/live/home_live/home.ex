defmodule PhxAstroNftWeb.HomeLive.Home do
  use PhxAstroNftWeb, :live_view

  def render(assigns) do
    ~H"""

     <.live_component module={PhxAstroNftWeb.Components.Header.Header} id={:header_section}>
    </.live_component>

    <!-- ==== Hero Section Start ==== -->
    <.live_component module={PhxAstroNftWeb.Components.Home.HeroSection} id={:hero_section}>
    </.live_component>

    <!-- ==== Hero Section End ==== -->

    <!-- ==== Artists Section Start ==== -->

    <.live_component module={PhxAstroNftWeb.Components.Home.ArtistSection} id={:artist_section}>
    </.live_component>

    <!-- ==== Artists Section End ==== -->


        <!-- ==== Auctions Section Start ==== -->
    <.live_component module={PhxAstroNftWeb.Components.Home.AuctionsSection} id={:auction_section}>
    </.live_component>

    <!-- ==== Auctions Section End ==== -->


       <!-- ==== Today's Picks Section Start ==== -->
    <.live_component module={PhxAstroNftWeb.Components.Home.Todayspicks} id={:todayspicks_section}>
    </.live_component>
    <!-- ==== Today's Picks Section End ==== -->


    <!-- ==== Features Section Start ==== -->

    <.live_component module={PhxAstroNftWeb.Components.Home.FeaturesSection} id={:feature_section}>
    </.live_component>
    <!-- ==== Features Section End ==== -->

    <!-- ==== Collection Section Start ==== -->

    <.live_component module={PhxAstroNftWeb.Components.Home.CollectionSection} id={:feature_section}>
    </.live_component>

     <.live_component module={PhxAstroNftWeb.Components.Footer.Footer} id={:footer_section}>
    </.live_component>

    """
  end
end
