class ShortLinkService
  def initialize(list)
    @list = list
    @bitly = Bitly.client
  end

  def generate
    link = Link.new(list: @list)
    base_url = "https://www.mnmlist.io"
    resource_name = "shared_lists"
    token = @list.token
    full_url = "#{base_url}/#{resource_name}/#{token}"
    link.short_link = @bitly.shorten(full_url).short_url
    link.save
  end

end
