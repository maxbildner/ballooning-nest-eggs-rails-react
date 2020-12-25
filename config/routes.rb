Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # get 'tests/index'
      get 'tests', to: 'tests#index'
    end
  end

  # If request received at path like "/", will rediret to frontend_index_html
  # of the ApplicaitonController
  # Redirect all requests that do not concern us to this build
  get '*path', to: 'application#frontend_index_html', constraints: lambda { |request|
      !request.xhr? && request.format.html?
    }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
