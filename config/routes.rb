Rails.application.routes.draw do
  get 'new', to: 'games#new'
  # para mudar um metedo de get para post eh soh mudar aqui mesmo porque por
  # default o generator sempre cria get:
  post 'score', to: 'games#score'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
