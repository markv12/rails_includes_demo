class DemoController < ApplicationController
  def index
    
  end

  def all_no_includes
    @authors = Author.all
  end

  def all_full_includes
    @authors = Author.includes([:city, {articles: :comments}]).all
    #@authors = Author.preload([:city, {articles: :comments}]).all
    #@authors = Author.joins([:city]).includes([:city, {articles: :comments}]).all

    #@authors.first.instance_variable_get(:@association_cache).keys
    #@authors.first.articles.first.instance_variable_get(:@association_cache).keys
  end

  def just_articles_no_includes
    @authors = Author.all
  end

  def just_articles_full_includes
    @authors = Author.includes(:articles).all
  end

  def single_author_no_includes
    @author = Author.first
  end

  def single_author_full_includes
    @author = Author.includes([:city, :articles]).first
  end

  def all_with_scope
    #@authors = Author.includes([:city, :articles]).all
    @authors = Author.includes([:city, {articles: :comments}]).all
    #@authors = Author.joins({articles: :comments}).includes([:city, {articles: :comments}]).where('comments.like_count >= ?', 5).all
    #@authors = Author.eager_load([:city, {articles: :comments}]).where('comments.like_count >= ?', 5).all
  end

  def all_with_association
    @authors = Author.includes([:city, {articles: :comments_with_at_least_5_likes}]).all
  end

  def all_with_select
    @authors = Author.includes([:city, {articles: :comments}]).all
  end
end

