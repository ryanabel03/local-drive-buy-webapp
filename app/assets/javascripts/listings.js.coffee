$ = jQuery

$ ->
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

