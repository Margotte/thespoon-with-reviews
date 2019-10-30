Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get 'top'
    end

    member do
      get 'chef'
    end

    resources :reviews, only: [:new, :create]
  end

  # get 'restaurants/top', to: 'restaurants#top'
end
