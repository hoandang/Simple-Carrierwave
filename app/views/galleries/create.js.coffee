<% if @gallery.save %>
  $("#new_gallery").remove()
  $("#new_link").show()
  $("#galleries").append "<%= j render @gallery %>"
<% else %>
  $("#new_gallery input[type=text]").wrap "<span class='field_with_errors'></span>"
  $("#new_gallery").find("strong").html "<%= @gallery.errors.full_messages %>"
  $("#new_gallery input[type=text]").focus()
<% end %>
