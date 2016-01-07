Rails.application.routes.draw do
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
end
