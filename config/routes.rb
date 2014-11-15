RubywarriorScoreboard::Application.routes.draw do
  resources :scores, only: [:create]

  root :to => 'players#index'
end
