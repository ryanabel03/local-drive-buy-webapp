$ = jQuery

edibleSubCategories = ["Brewery / Winery", "Farmers Market", "Restaurant",
                       "Roadside Stand", "U-Pick / Orchard"]

goodSubCategories = ["Arts & Crafts", "Clothing", "Health & Fitness", "Furniture", "Other"]

createOption = (display, value) ->
  "<option value='#{value}'>#{display}</option"

populateSelectBoxWithData = (data) ->
  $("#listings_sub_category").html("")

  for sub in data
    $("#listings_sub_category").append(createOption(sub, sub))

populateEditSelectBoxWithData = (data) ->
  $("#listing_sub_category").html("")

  for sub in data
    $("#listing_sub_category").append(createOption(sub, sub))


toggleSubCategory = ->
  category = $("#listings_category").val()

  if category == "Edibles"
    populateSelectBoxWithData(edibleSubCategories)
  else
    populateSelectBoxWithData(goodSubCategories)

toggleEditSubCategory = ->
    category = $("#listing_category option:selected").val()

    if category == "Edibles"
      populateEditSelectBoxWithData(edibleSubCategories)
    else
      populateEditSelectBoxWithData(goodSubCategories)

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

  $("#listing_category").change ->
    toggleEditSubCategory()
