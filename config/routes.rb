Rails.application.routes.draw do
  root to: 'demo#index'
  match '/all_no_includes', to: 'demo#all_no_includes', as: 'all_no_includes', via: :get
  match '/all_full_includes', to: 'demo#all_full_includes', as: 'all_full_includes', via: :get
  
end
