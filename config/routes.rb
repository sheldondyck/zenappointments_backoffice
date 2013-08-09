ZenAppointmentsBackOffice::Application.routes.draw do
  get   'stats',                 :to => 'stats#index'

  get   'signin',                 :to => 'sessions#new'
  post  'signin',                 :to => 'sessions#create'
  get   'signout',                :to => 'sessions#destroy'

  root 'stats#index'
end
