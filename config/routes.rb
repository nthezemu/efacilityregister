Rails.application.routes.draw do
  get 'facilities/index'

  get 'logins/login'
  get 'logins/logout'

  post 'logins/authenticate'

  get 'facilities/list'

  get 'facilities/new'

  patch 'facilities/update'

  get 'facilities/edit'

  post 'facilities/create'

  post 'facilities/searchbydistrictquery'

  get 'facilities/searchbydistrict'

  post 'facilities/search_by_zone_query'

  get 'facilities/search_by_zone'

  post 'facilities/search_by_partner_query'

  get 'facilities/search_by_partner'

  get 'facilities/show'

  get 'facilities/edit'

  get 'facilities/delete'

  get 'services/new'

  get 'services/list'

  patch 'services/edit'
  get  'services/edit'

  get 'services/show'

  put   'services/delete'

  get   'services/delete'
  patch 'services/update'


  put 'resources/delete'
  get 'resources/delete'

  get 'resources/create'

  get 'resources/list'


  get 'resources/show'

  get 'resources/edit'

  patch 'resource/edit'
  
  patch 'resources/update'


 put 'utilities/delete'

  get 'utilities/create'

  get 'utilities/list'


  get 'utilities/show'

  get 'utilities/edit'

  patch 'utilities/edit'
  
  patch 'utilities/update'

  get 'utilities/delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
