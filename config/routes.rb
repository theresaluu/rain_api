Rails.application.routes.draw do
  scope '/api' do
    resources :egos
  end
end
