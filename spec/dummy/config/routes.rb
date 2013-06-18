Dummy::Application.routes.draw do
  root to: 'pages#home'
  mount Resque::Server, :at => "/resque"
end
