Resumatic::Application.routes.draw do
  resources :users
  resources :resumes
  resources :experiences
  resources :projects
  resources :educations
end
