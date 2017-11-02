Rails.application.routes.draw do
##  get '/contacts', to: 'contacts#index'#課題１問い合わせ画面作成
  resources :contacts

  get '/stocks', to: 'stocks#index'#小課題rails入門４

##  get '/blogs', to: 'blogs#index' #追記する
  resources :blogs
end