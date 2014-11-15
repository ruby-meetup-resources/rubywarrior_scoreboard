RubywarriorScoreboard::Application.routes.draw do
  resources :scores, only: [:create]

  root :to => 'warriors#index'
end
