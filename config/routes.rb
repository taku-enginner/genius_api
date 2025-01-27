Rails.application.routes.draw do
  resources :search_songs, only: [:index, :show, :create, :destroy] do
    collection do
      get :search_results
      get :how_to_use
    end
    member do
      get :lyrics
    end
  end
  root "search_songs#index"
end
