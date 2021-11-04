class DemoController < ApplicationController
  def index
    
  end

  def all_no_includes
    @cities = City.all
  end

  def all_full_includes
    @cities = City.includes({ authors: {articles: :comments}}).all
  end
end

