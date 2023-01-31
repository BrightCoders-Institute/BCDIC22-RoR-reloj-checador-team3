Rails.application.routes.draw do
  get 'reports/index'
  get 'reports/generate_report'
  devise_for :users, :skip => [:registrations]
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end
  get 'front_view/index'


  get 'admin/admin_menu'

  resources :employees

  resources :stores

  root 'front_view#index'

end
