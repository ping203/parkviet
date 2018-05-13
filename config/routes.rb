Rails.application.routes.draw do
  get 'products/index'
  get 'products/show'
  devise_for :users,
             path: '',
             path_names: { sign_in: 'dang-nhap', sign_out: 'dang-xuat', sign_up: 'dang-ky' },
             controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }

  root to: "home#index"

  get 'get_district_list', to: "application#get_districts"
  get 'manage', to: "manage#index"
  get 'sale', to: "sale#index"

  scope :manage do
    resources :products
  end
end