class BackdoorController < ApplicationController
  def index
    render({ :template => "backdoor_templates/backdoor" })
  end

  def add_item
    new_item = Item.new
    new_item.link_url = params.fetch("query_link_url")
    new_item.link_description = params.fetch("query_link_description")
    new_item.thumbnail_url = params.fetch("query_thumbnail_url")
    new_item.save

    redirect_to("/")
  end
end
