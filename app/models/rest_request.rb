class RestRequest < ActiveRecord::Base
  
  def execute
    Restfulie.at(uri).raw.send(method.to_sym)
  end
end
