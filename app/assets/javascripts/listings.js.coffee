$ = jQuery
$ ->
  $("#create-listing-btn").click (e) ->
    e.preventDefault()
    data =
      title: $("#listings_title").val()
      description: $("#listings_description").val()
      address: $("#listings_address_one").val()
      city: $("#listings_city").val()
      state: $("#listings_state").val()
      zip: $("#listings_zip").val()
    $.ajax
      url: Routes.listings_path()
      type: "POST"
      contentType: "application/json"
      data: JSON.stringify {data: data}
      dataType: "json"
