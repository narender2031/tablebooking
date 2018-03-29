Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/table', to: "table_settings#index" 
  post '/create_table', to: "table_settings#create"
  delete '/delete_table/:id', to: "table_settings#deleteTable"
  get '/edit/:id', to: "table_settings#edit"
  patch '/updateTable', to: "table_settings#update"
  get '/clander', to: "clander#index"
  post '/reservation', to: "clander#reserveTable"
end
