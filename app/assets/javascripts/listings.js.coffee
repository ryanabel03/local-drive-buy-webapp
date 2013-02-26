$ = jQuery

$ ->
  $(".well.list").mouseenter ->
    console.log $(this).closest("dl").append('<button value="Edit" id="listing-edit-btn">').button()
    $("#edit-listings-btn").show()
    $("#delete-listings-btn").show()

  $(".well.list").mouseleave ->
    $(this).closest("dl").append('<input type="button" value="Edit" id="listing-edit-btn">').button()
    $("#edit-listings-btn").hide()
    $("#delete-listings-btn").hide()
