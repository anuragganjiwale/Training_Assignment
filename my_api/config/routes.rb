Rails.application.routes.draw do
  resources :students

  namespace :v1 do
    resources :students
  end

  scope "/anurag", module: "v2" do
    resources :students
  end
end


# headers - ways to manage the versions , params , urls
# rspec api documentation
