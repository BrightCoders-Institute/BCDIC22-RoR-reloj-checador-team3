Rails.application.routes.draw do
  #get 'front_view/index'

  get 'admin/admin_menu'

  resources :employees

  resources :stores
  
  root 'admin#admin_menu'

end
