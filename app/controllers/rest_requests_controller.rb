class RestRequestsController < ApplicationController
  
  def index
    @new_rest_request = RestRequest.new
    @rest_requests = RestRequest.all
  end
  
  def create
    @rest_request = RestRequest.create(params[:rest_request])
    redirect_to @rest_request
  end
  
  def show
    @new_rest_request = RestRequest.new
    @rest_request = RestRequest.find(params[:id])
    @response = @rest_request.execute
    @rest_requests = RestRequest.all(:conditions => ["login = ?", @rest_request.login])
    @links = []
    add_xml_links
  end
  
  private
  def add_xml_links
    content = @response.body
    regex = Regexp.new(/(<link |<a )(.+)?>/)
    matchdata = regex.match(content)
    while matchdata
      link = matchdata[0]
      href = link[/href="([^"]*)/, 1]
      rel = link[/rel="([^"]*)/, 1]
      type = link[/type="([^"]*)/, 1]
      @links << {:type => type, :rel => rel, :href => href}
    	content = matchdata.post_match
    	matchdata = regex.match(content)
    end
  end
  
end
