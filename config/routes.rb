Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  get 'mypage', to: 'mypage#top'
  resources :home, only: [:show, :index]


  resources :signup do
    collection do
      get 'login_methods' #ログイン方法選択画面
      get 'registration' #会員情報入力
      post 'sms_confirmation' #電話番号認証
      post 'address' #住所入力
      post 'credit_card' #支払い方法
      get 'complete' #完了
    end
  end

end
