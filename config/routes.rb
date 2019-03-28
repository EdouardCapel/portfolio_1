Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "/projects", to: "pages#project_index"

  # Poject generator - JSON Format
  get "/project_generator", to: "pages#project_generator"

end
