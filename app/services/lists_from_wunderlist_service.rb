class ListsFromWunderlistService
  def initialize(user)
    @wunderlist = Wunderlist::API.new({
      access_token: user.token,
      client_id: ENV['WUNDERLIST_ID']
    })
    get_lists
  end

  def fetch
    @lists
  end

  def fetch_for_id(list_id)
    @lists.find {|list| list.id == list_id}
  end

  private

  def get_lists
    @lists = @wunderlist.lists
  end
end
