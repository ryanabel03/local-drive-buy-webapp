$ = jQuery

toggleSubCategory = ->
  category = $("#listings_category").val()

  if category == "Edibles"
    $(".goods-sub-category").hide()
    $(".edible-sub-category").show()
    $(".goods_filter").hide()
    $(".edible_filter").show()
  else
    $(".edible-sub-category").hide()
    $(".goods-sub-category").show()
    $(".goods_filter").show()
    $(".edible_filter").hide()

$ ->
  $(document).ready ->
    toggleSubCategory()


  $(".div.list dl").mouseenter ->
    listing_id = $(this).closest("dl").attr("id")
    $("#edit-listings-btn-#{listing_id}").show()
    $("#delete-listings-btn-#{listing_id}").show()

  $(".div.list dl").mouseleave ->
    listing_id = $(this).closest("dl").attr("id")
    $("#edit-listings-btn-#{listing_id}").hide()
    $("#delete-listings-btn-#{listing_id}").hide()

  $(".delete-btn").click ->
    listing_id = $(this).closest("dl").attr("id").split("_")[1]
    $("#clicked-id").html(listing_id)

  $(".edit-btn").click ->
    listing_id = $(this).closest("dl").attr("id").split("_")[1]
  
  $("#listings_category").change ->
    toggleSubCategory()

  $("#to-location-info").click (e) ->
    e.preventDefault()
    $(".business_info").hide()
    $(".location_info").show()
    $(".business_hours").show()

  $("#to-location-imgs").click (e) ->
    e.preventDefault()
    $(".listing_images").show()
    $(".location_info").hide()
    $(".business_hours").hide()
