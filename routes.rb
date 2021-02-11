Rails.application.routes.draw do
  get 'dish/all'
  get 'home/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get "/"=>"home#top"
    get "/dish/all"=>"dish#all"
    get "/explanation"=>"home#explanation"
    get "/pay"=>"home#pay"
    get "/dishes/cart"=>"dish#cart"

    post "/:id/update"=>"dish#update"
    post "/:id/destroy"=>"dish#destroy"
    

end
