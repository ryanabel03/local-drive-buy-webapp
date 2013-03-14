$ = jQuery

$ ->
  $(".div.list dl").mouseenter ->
    listing_id = $(this).closest("dl").attr("id")
    $("#edit-listings-btn-#{listing_id}").show()
    $("#delete-listings-btn-#{listing_id}").show()

  $(".div.list dl").mouseleave ->
    listing_id = $(this).closest("dl").attr("id")
    $("#clicked-id").val(null)
    $("#edit-listings-btn-#{listing_id}").hide()
    $("#delete-listings-btn-#{listing_id}").hide()

  $(".delete-btn").click ->
    listing_id = $(this).closest("dl").attr("id").split("_")[1]
    $("#clicked-id").val(listing_id)
    console.log($("#clicked-id").val())
    $("#delete-confirmation").modal("show")

  $(".edit-btn").click ->
    listing_id = $(this).closest("dl").attr("id").split("_")[1]
    console.log listing_id
