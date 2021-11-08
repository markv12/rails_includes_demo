Rails.application.routes.draw do
  root to: 'demo#index'
  match '/all_no_includes', to: 'demo#all_no_includes', as: 'all_no_includes', via: :get
  match '/all_full_includes', to: 'demo#all_full_includes', as: 'all_full_includes', via: :get

  match '/just_articles_no_includes', to: 'demo#just_articles_no_includes', as: 'just_articles_no_includes', via: :get
  match '/just_articles_full_includes', to: 'demo#just_articles_full_includes', as: 'just_articles_full_includes', via: :get

  match '/single_author_no_includes', to: 'demo#single_author_no_includes', as: 'single_author_no_includes', via: :get
  match '/single_author_full_includes', to: 'demo#single_author_full_includes', as: 'single_author_full_includes', via: :get

  match '/all_with_scope', to: 'demo#all_with_scope', as: 'all_with_scope', via: :get
  match '/all_with_association', to: 'demo#all_with_association', as: 'all_with_association', via: :get
  match '/all_with_select', to: 'demo#all_with_select', as: 'all_with_select', via: :get

  match '/city_authors_with_scope', to: 'demo#city_authors_with_scope', as: 'city_authors_with_scope', via: :get
  match '/city_authors_with_select', to: 'demo#city_authors_with_select', as: 'city_authors_with_select', via: :get
end
