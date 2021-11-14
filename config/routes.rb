Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "lang/:lang_id/sentences", to: "sentences#index"
  get "sentences/:id/target/:target", to: "sentences#show"
end
