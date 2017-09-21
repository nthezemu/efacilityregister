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

  get 'services/resources'

  get 'services/utilities'

  get 'services/new'

  get 'services/list'

  get 'services/resource_list'
  
  get 'services/service_list'

  get 'services/edit'

  get 'services/resource-edit'

  get 'services/show'

  get 'services/delete'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
