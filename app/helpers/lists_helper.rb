module ListsHelper
  def shareable_link(list)
    base_url = request.base_url
    resource_name = "shared_lists"
    token = list.token
    share_url = "#{base_url}/#{resource_name}/#{token}"
  end
end
