$("#edit_link_<%= @gallery.id %>").hide()
$("#edit_cancel_link_<%= @gallery.id %>").show()
$("#gallery_name_<%= @gallery.id %>").hide().after("<%= j render 'form_edit' %>")
$("#edit_gallery_<%=@gallery.id%> input").focus()


