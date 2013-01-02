<% if @updated %>
  $("#edit_gallery_<%=@gallery.id%>").hide()
  $("#gallery_name_<%=@gallery.id%>").show().children("a").html "<%=@gallery.name%>"
  $("#edit_link_<%=@gallery.id%>").show()
  $("#edit_cancel_link_<%=@gallery.id%>").hide()
  $("#gallery_<%=@gallery.id%>").find("strong").hide()
<% else %>
  $("#edit_gallery_<%=@gallery.id%> input").wrap "<span class='field_with_errors'></span>"
  $("#gallery_<%=@gallery.id%>").find("strong").html("<%= @gallery.errors.full_messages %>").show()
  $("#edit_gallery_<%=@gallery.id%> input").focus()
<% end %>  
