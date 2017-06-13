Rails.application.routes.draw do
  get 'sensor/create'

  delete 'sensor/:id', to: 'sensor#delete'

  get 'sensor/update/:id', to: 'sensor#update'

  get 'sensors/', to: 'sensor#list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
