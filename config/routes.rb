Rails.application.routes.draw do
  get 'facilities/index'

  get 'logins/login'

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


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
