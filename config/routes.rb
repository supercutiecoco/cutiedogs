Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get 'dogs/introduce1' => 'dogs#introduce1'
  get 'dogs/introduce2' => 'dogs#introduce2'
  get 'dogs/introduce3' => 'dogs#introduce3'
  get 'dogs/introduce4' => 'dogs#introduce4'
  get 'dogs/introduce5' => 'dogs#introduce5'
  get 'dogs/introduce6' => 'dogs#introduce6'
  get 'dogs/introduce7' => 'dogs#introduce7'
  get 'dogs/introduce8' => 'dogs#introduce8'
  get 'dogs/introduce9' => 'dogs#introduce9'
  get 'dogs/introduce10' => 'dogs#introduce10'
  get 'dogs/introduce11' => 'dogs#introduce11'
  get 'dogs/introduce12' => 'dogs#introduce12'

  get 'dogs/:dog_id/likes' => 'likes#create'
  get 'dogs/:dog_id/likes/:id' => 'likes#destroy'
  
  resources :users, only: [:show]


  resources :dogs do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]

  end


  get 'perfumes' => 'perfumes#index'
  get 'perfumes/question1' => 'perfumes#question1'
  get 'perfumes/question2' => 'perfumes#question2'
  get 'perfumes/question3' => 'perfumes#question3'
  get 'perfumes/question4' => 'perfumes#question4'
  get 'perfumes/show1' => 'perfumes#show1'
  get 'perfumes/show2' => 'perfumes#show2'
  get 'perfumes/show3' => 'perfumes#show3'
  get 'perfumes/show4' => 'perfumes#show4'
  get 'perfumes/show5' => 'perfumes#show5'
  get 'perfumes/show6' => 'perfumes#show6'
  
  get 'memes' => 'memes#index'
  get 'memes/question1' => 'memes#question1'
  get 'memes/question2' => 'memes#question2'
  get 'memes/question3' => 'memes#question3'
  get 'memes/question4' => 'memes#question4'
  get 'memes/show1' => 'memes#show1'
  get 'memes/show2' => 'memes#show2'
  get 'memes/show3' => 'memes#show3'
  get 'memes/show4' => 'memes#show4'
  get 'memes/show5' => 'memes#show5'
  get 'memes/show6' => 'memes#show6'

  root 'dogs#index'
end
