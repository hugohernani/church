Rails.application.routes.draw do
  root 'static_pages#index'

  mount API::Root => '/'
  mount GrapeSwaggerRails::Engine => '/documentation'

  # root to: 'posts#index'
  get '/posts/:slug', to: 'posts#show', as: :posts


  scope "/site" do
    get '/', to: 'entries#all'
    scope "/:content_class" do
      resources :entries
    end
  end

  resources :static_pages do
    collection do
      get 'members', to: :members
      get 'our_mission', to: :our_mission
    end
  end

  resources :events
  resources :biblic_school
  resources :gallery
  resources :blog
  resources :contacts, only: [:index, :create]
  resources :testimonies
  resources :faq
  resources :notifications
end
