Rails.application.routes.draw do
  get 'facilities/index'

  get 'logins/login'

  get 'logins/authenticate'

  get 'facilities/list'

  get 'facilities/new'

  patch 'facilities/update'

  get 'facilities/edit'

  post 'facilities/create'

  get 'facilities/show'

  get 'facilities/edit'

  get 'facilities/delete'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
