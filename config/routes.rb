RubywarriorScoreboard::Application.routes.draw do
  resources :scores, only: [:create, :show]

  root :to => 'warriors#index'
end
