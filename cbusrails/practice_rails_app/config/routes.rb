Rails.application.routes.draw do
  
  get 'about' => 'welcome#about'
  
  get 'contact_us' => 'welcome#contact'
  
  get 'homepage' => 'welcome#index'
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
